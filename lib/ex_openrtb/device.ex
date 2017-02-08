defmodule ExOpenRTB.Device do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :ua,
    :geo,
    :dnt,
    :lmt,
    :ip,
    :ipv6,
    :devicetype,
    :make,
    :model,
    :os,
    :osv,
    :hwv,
    :h,
    :w,
    :ppi,
    :pxratio,
    :js,
    :geofetch,
    :flashver,
    :language,
    :carrier,
    :mccmnc,
    :connectiontype,
    :ifa,
    :didsha1,
    :didmd5,
    :dpidsha1,
    :dpidmd5,
    :macsha1,
    :macmd5,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_decoder(:geo, %ExOpenRTB.Geo{})
      |> map_const(:dnt, &ExOpenRTB.Constants.yesno/1)
      |> map_const(:lmt, &ExOpenRTB.Constants.yesno/1)
      |> map_const(:devicetype, &ExOpenRTB.Constants.devicetype/1)
      |> map_const(:js, &ExOpenRTB.Constants.yesno/1)
      |> map_const(:geofetch, &ExOpenRTB.Constants.yesno/1)
      |> map_const(:connectiontype, &ExOpenRTB.Constants.connectiontype/1)
    end
  end
end
