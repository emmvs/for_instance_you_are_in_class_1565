# le_wagon_student_spec.rb

require_relative "../le_wagon_student"

describe LeWagonStudent do
  let(:student) { LeWagonStudent.new("Vio", "Web Dev") }

  it "should have a name" do
    expect(student.name).to eq("Vio")
  end

  it "should have a bootcamp" do
    expect(student.bootcamp).to eq("Web Dev")
  end

  it "should have a default reboot status of false" do
    expect(student.reboot).to be(false)
  end

  it "should have a default week of nil" do
    expect(student.week).to be_nil
  end

  it "should introduce the student" do
    student.week = 3
    expect(student.introduce).to eq("Hi, I'm Vio, a student at the Web Dev and in week 3!")
  end

  it "should return true for needs_reboot? when week is 2" do
    student.week = 2
    expect(student.needs_reboot?).to be(true)
  end

  it "should return false for needs_reboot? when week is not 2" do
    student.week = 3
    expect(student.needs_reboot?).to be(false)
  end

  it "should set the week if it's between 1 and 9" do
    student.set_week(5)
    expect(student.week).to eq(5)
  end

  it "should not set the week if it's less than 1" do
    student.set_week(-1)
    expect(student.week).to be_nil
  end

  it "should not set the week if it's greater than 9" do
    student.set_week(10)
    expect(student.week).to be_nil
  end
end
