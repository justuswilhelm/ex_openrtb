defmodule ExOpenRTB.ImpTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Imp{
    "id": "1",
    "banner": %ExOpenRTB.Banner{
      "h": 250,
      "w": 300,
      "pos": :unknown,
    },
    "bidfloor": 0.03,
    "pmp": %ExOpenRTB.Pmp{
      "private_auction": 1,
      "deals": [
        %ExOpenRTB.Deal{
          "id": "DX-1985-010A",
          "bidfloor": 2.5,
          "at": 2
        }
      ]
    }
  }, :imp
end
