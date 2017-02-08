defmodule ExOpenRTB.Audio do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :mimes,
    :minduration,
    :maxduration,
    :protocols,
    :sequence,
    :battr,
    :maxextended,
    :minbitrate,
    :maxbitrate,
    :delivery,
    :companionad,
    :companiontype,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const_list(:protocols, &ExOpenRTB.Constants.protocol/1)
      |> map_const(:startdelay, &ExOpenRTB.Constants.startdelay/1)
      |> map_const_list(:battr, &ExOpenRTB.Constants.attr/1)
      |> map_const_list(:delivery, &ExOpenRTB.Constants.delivery/1)
      |> map_decoder(:companionad, [%ExOpenRTB.Banner{}])
      |> map_const_list(:api, &ExOpenRTB.Constants.api/1)
      |> map_const_list(:companiontype, &ExOpenRTB.Constants.companiontype/1)
    end
  end
end
