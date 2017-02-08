defmodule ExOpenRTB.Data do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :id,
    :name,
    :segment,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_decoder(:segment, [%ExOpenRTB.Segment{}])
    end
  end
end
