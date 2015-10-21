require 'test_helper'

class PaperTest < ActiveSupport::TestCase
  test "paper attributes must not be empty" do
    paper = Paper.new
    assert paper.invalid?
    assert paper.errors[:name].any?
    assert paper.errors[:time].any?
    assert paper.errors[:date].any?
    assert paper.errors[:students].any?
  end

  test "students number must be positive" do
    paper = Paper.new(name: 'lorem ipsum', date: '01/01/2020', time: '1000hrs')
    paper.students = -1
    assert paper.invalid?
    assert_equal ["must be greater than or equal to 1"],
    paper.errors[:students]

    papers.students = 0
    assert paper.invalid?
    assert_equal ["must be greater than or equal to 1"],
    paper.errors[:students]

    paper.students = 1
    assert paper.valid?
  end
end
