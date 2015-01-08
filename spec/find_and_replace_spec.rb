require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it("doesn't change the object if argument is not in object") do
    expect("hello world".find_and_replace("dog", "cat")).to(eq("hello world"))
  end

  it("replaces subtracted argument with secondary argument") do
    expect("hello world".find_and_replace("world", "universe")).to(eq("hello universe"))
  end

  it("replaces partial matches") do
    expect("hey there doggie dog".find_and_replace("dog", "cat")).to(eq("hey there catgie cat"))
  end

end
