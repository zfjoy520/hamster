require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Hamster::List do

  describe "#empty?" do

    [
      [[], true],
      [["A"], false],
      [["A", "B", "C"], false],
    ].each do |values, expected|

      describe "on #{values.inspect}" do

        list = Hamster.list(*values)

        it "returns #{expected}" do
          list.empty?.should == expected
        end

      end

    end

  end

end
