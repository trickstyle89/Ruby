def benchmark
  start_time = Time.now

  yield if block_given? # Execute the block of code passed to the method

  end_time = Time.now

  # This will return the difference in the timestamps in seconds
  running_time = end_time - start_time
  running_time
end

long_string = "apple" * 100000000

running_time = benchmark { long_string }

puts "string.reverse took #{running_time} seconds to run"
