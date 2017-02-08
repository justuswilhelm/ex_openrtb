defmodule ExOpenRTB.Native do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :request,
    :ver,
    :api,
    :battr,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_const_list(:api, &ExOpenRTB.Constants.api/1)
      |> map_const_list(:battr, &ExOpenRTB.Constants.attr/1)
    end
  end
end
