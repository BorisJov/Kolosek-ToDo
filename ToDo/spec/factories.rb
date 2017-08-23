FactoryGirl.define do
  factory :task do
    text 'foo'
    done false
  end

  factory :done_task, class: Task do
    text 'bar'
    done true
  end
end