defmodule ExOpenRTB.SeatBid do
  defstruct [
    :bid,
    :seat,
    :group,
    :ext
  ]

  defimpl Poison.Decoder do
    def decode(%{bid: bid} = struct, _options) do
      bid = if bid do
        Poison.Decode.decode(bid, as: [%ExOpenRTB.Bid{}])
      else
        nil
      end
      %{ struct | bid: bid}
    end
  end
end
