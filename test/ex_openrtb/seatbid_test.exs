defmodule ExOpenRTB.SeatBidTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.SeatBid{
    bid: [
      %ExOpenRTB.Bid{
        adid: "52a12b5955314b7194a4c9ff",
        adm: "<iframe />",
        adomain: ["ads.com"],
        attr: [],
        cid: "52a12b5955314b7194a4c9ff",
        crid: "52a12b5955314b7194a4c9ff_1386294105",
        dealid: "DX-1985-010A",
        id: "24195efda36066ee21f967bc1de14c82db841f07",
        impid: "24195efda36066ee21f967bc1de14c82db841f07",
        nurl: "http://ads.com/win/52a12b5955314b7194a4c9ff?won=${AUCTION_PRICE}",
        price: 1.028428
      }
    ],
    seat: "42"
  }, :seatbid
end
