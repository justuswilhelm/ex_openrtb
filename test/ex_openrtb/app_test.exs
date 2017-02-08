defmodule ExOpenRTB.AppTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.App{
    "id": "agltb3B1Yi1pbmNyDAsSA0FwcBiJkfIUDA",
    "name": "Yahoo Weather",
    "cat": [
      "weather",
      "Science",
      "Weather"
    ],
    "ver": "1.0.2",
    "bundle": "628677149",
    "publisher": %ExOpenRTB.Publisher{
      "id": "agltb3B1Yi1pbmNyDAsSA0FwcBiJkfTUCV",
      "name": "yahoo",
      "domain": "www.yahoo.com"
    },
    "storeurl": "https://itunes.apple.com/id628677149"
  }, :app
end
