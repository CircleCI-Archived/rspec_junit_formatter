describe "some example specs" do
  it "should succeed" do
    expect(true).to be_true
  end

  it "should fail" do
    expect(false).to be_true
  end

  it "should raise" do
    raise ArgumentError
  end

  it "should be pending" do
    if defined? skip
      skip
    else
      pending
    end
  end

  describe "some nested specs" do
    it "should also succeed" do
      expect(true).to be_true
    end

    describe "double nesting" do
      it "should also succeed" do
        expect(true).to be_true
      end
    end
  end

  if instance_methods.include? :be_truthy
    def be_true
      be_truthy
    end
  end
end
