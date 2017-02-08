defmodule ExOpenRTB.Pmp do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :private_auction,
    :deals,
    :ext,
  ]

  defimpl Poison.Decoder do
    def decode(values, _options) do
      values
      |> map_decoder(:deals, [%ExOpenRTB.Deal{}])
    end
  end
end
