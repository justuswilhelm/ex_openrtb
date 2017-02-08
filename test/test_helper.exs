ExUnit.start()

defmodule ExOpenRTB.Test do
  defmacro test_decode(structure, decoder) do
    path = 'test/fixtures/#{decoder}.json'
    quote do
      test unquote("#{decoder} is correctly destructured") do
        json = File.read!(unquote(path))
        assert unquote(structure) == ExOpenRTB.Decoder.decode!(unquote(decoder), json)
      end
    end
  end
end
