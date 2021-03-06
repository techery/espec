defmodule ESpec.Assertions.EqlSpec do
  use ESpec, async: true

  describe "ESpec.Assertions.Eql" do
    context "Success" do
      it do: expect(1+1).to eql(2)
      it do: expect(1+1).to_not eql(2.0)
    end

    xcontext "Errors" do
      it do: expect(1+1).to eql(2.0)
      it do: expect(1+1).to_not eql(2)
    end
  end
end
