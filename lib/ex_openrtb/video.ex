defmodule ExOpenRTB.Video do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :mimes,
    :minduration,
    :maxduration,
    :protocols,
    :protocol,
    :w,
    :h,
    :startdelay,
    :placement,
    :linearity,
    :skip,
    :skipmin,
    :skipafter,
    :sequence,
    :battr,
    :maxextended,
    :minbitrate,
    :maxbitrate,
    :boxingallowed,
    :playbackmethod,
    :playbackend,
    :delivery,
    :pos,
    :companionad,
    :api,
    :companiontype,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const_list(:protocols, &ExOpenRTB.Constants.protocol/1)
      |> map_const(:protocol, &ExOpenRTB.Constants.protocol/1)
      |> map_const(:startdelay, &ExOpenRTB.Constants.startdelay/1)
      |> map_const(:placement, &ExOpenRTB.Constants.placement/1)
      |> map_const(:linearity, &ExOpenRTB.Constants.linearity/1)
      |> map_default(:skipmin, 0)
      |> map_default(:skipafter, 0)
      |> map_const_list(:battr, &ExOpenRTB.Constants.attr/1)
      |> map_bool(:boxingallowed)
      |> map_const_list(:playbackmethod, &ExOpenRTB.Constants.playbackmethod/1)
      |> map_const_list(:delivery, &ExOpenRTB.Constants.delivery/1)
      |> map_const(:pos, &ExOpenRTB.Constants.pos/1)
      |> map_decoder(:companionad, [%ExOpenRTB.Banner{}])
      |> map_const_list(:api, &ExOpenRTB.Constants.api/1)
      |> map_const_list(:companiontype, &ExOpenRTB.Constants.companiontype/1)
    end
  end
end
