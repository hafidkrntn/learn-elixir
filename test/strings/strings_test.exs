defmodule AllstringsTest do
  use ExUnit.Case

  test "trim_string/1 returns the value with whitespace trimmed from the beginning and end" do
    assert Allstrings.trim_string("  Hello, world!  ") == "Hello, world!"
  end

  test "first_letter/1 returns the first letter of a value" do
    assert Allstrings.first_letter("Hello, world!") == "H"
  end

  test "initial/1 returns the first letter of a value, capitalized and followed by a period" do
    assert Allstrings.initial("John Doe") == "J."
  end

  test "initials/1 returns the initials of a person's full name, with each initial separated by a space" do
    assert Allstrings.initials("John Doe") == "J.D."
  end

  test "build_saucer/0 returns a string representing a saucer" do
    assert Allstrings.build_saucer() == """

                               %%%%%%%%%%%%%%%%%%%%
                          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                       %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                 ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
             ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
           ************************************************************
               ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
                  ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,
                       ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

           """
  end
end
