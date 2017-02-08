defmodule ExOpenRTB.Imp do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :id,
    :metric,
    :banner,
    :video,
    :audio,
    :native,
    :pmp,
    :displaymanager,
    :displaymanagerver,
    :instl,
    :tagid,
    :bidfloor,
    :bidfloorcur,
    :clickbrowser,
    :secure,
    :iframebuster,
    :exp,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_decoder(:metric, [%ExOpenRTB.Metric{}])
      |> map_decoder(:banner, %ExOpenRTB.Banner{})
      |> map_decoder(:video, %ExOpenRTB.Video{})
      |> map_decoder(:audio, %ExOpenRTB.Audio{})
      |> map_decoder(:native, %ExOpenRTB.Native{})
      |> map_decoder(:pmp, %ExOpenRTB.Pmp{})
      |> map_const_list(:protocols, &ExOpenRTB.Constants.protocol/1)
      |> map_const_list(:battr, &ExOpenRTB.Constants.attr/1)
      |> map_const_list(:companiontype, &ExOpenRTB.Constants.companiontype/1)
    end
  end
end
