require 'concurrent'

ENV['EXECUTION_INT'] ||= 10
ENV['TIMEOUT_INT'] ||= 5

task= Concurrent::TimerTask.new(
  execution_interval: ENV['EXECUTION_INT'], timeout_interval: ENV['TIMEOUT_INT']) do
  puts 'check ...'
end
task.execute

sleep
