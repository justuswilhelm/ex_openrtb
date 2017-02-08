defmodule ExOpenRTB.Banner do
  use ExOpenRTB.Decoder.Macro
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :w,
    :h,
    :format,
    :wmax,
    :hmax,
    :wmin,
    :hmin,
    :id,
    :btype,
    :battr,
    :pos,
    :mimes,
    :topframe,
    :expdir,
    :api,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const_list(:expdir, &ExOpenRTB.Constants.expdir/1)
      |> map_const(:pos, &ExOpenRTB.Constants.pos/1)
      |> map_const_list(:battr, &ExOpenRTB.Constants.attr/1)
    end
  end
end
