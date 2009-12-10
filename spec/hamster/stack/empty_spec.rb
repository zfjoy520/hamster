require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Hamster::Stack do

  describe "#empty?" do

    [
      [[], true],
      [["A"], false],
      [["A", "B", "C"], false],
    ].each do |values, expected|

      describe "on #{values.inspect}" do

        stack = Hamster.stack(*values)

        it "returns #{expected}" do
          stack.empty?.should == expected
        end

      end

    end

  end

end
