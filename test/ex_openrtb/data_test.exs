defmodule ExOpenRTB.DataTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Data{
    id: "6",
    name: "Data Provider 1",
    segment: [
      %ExOpenRTB.Segment{
        id: "12341318394918",
        name: "auto intenders"
      },
      %ExOpenRTB.Segment{
        id: "1234131839491234",
        name: "auto enthusiasts"
      },
      %ExOpenRTB.Segment{
        id: "23423424",
        name: "data-provider1-age",
        value: "30-40"
      }
    ]
  }, :data
end
