defmodule ExOpenRTB.GeoTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Geo{
    "country": "USA",
    "lat": 35.012345,
    "lon": -115.12345,
    "city": "Los Angeles",
    "metro": "803",
    "region": "CA",
    "zip": "90049"
  }, :geo
end
