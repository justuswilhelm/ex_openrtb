defmodule ExOpenRTB.PmpTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Pmp{
    private_auction: 1,
    deals: [
      %ExOpenRTB.Deal{
        id: "DX-1985-010A",
        bidfloor: 2.5,
        at: 2
      },
      %ExOpenRTB.Deal{
        id: "DX-1986-010A",
        bidfloor: 2.6
      }
    ]
  }, :pmp
end
