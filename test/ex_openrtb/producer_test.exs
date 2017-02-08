defmodule ExOpenRTB.ProducderTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Producer{
    "id": "7085F25B-58C3-4BFC-9ABB-6F6D783FE16B",
    "name": "Warner Bros",
    "cat": ["IAB-1"],
    "domain": "producer.com"
  }, :producer
end
