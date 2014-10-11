class SpeedCamera

  def self.parse(input)
    input = input.split(/\n/)

    # meters per second
    speed_in_mps = input[0][/\d+\.\d+/].to_f * (1609.0/3600.0)

    camera_index = input.find_index("Start of log for camera 1.")
    cameras = []
    input[1..camera_index-1].each {|x| cameras << x.split[5].to_f/speed_in_mps}
    camera_times = self.between_points(cameras)

    cars = self.parse_cars(input[camera_index..-1])
    puts camera_times
    puts cars
    # speeders = self.compare(cars,camera_times,speed_in_mps)

    # speeders.each {|x| puts speeders}
  end

  def self.between_points(input)
    solution_array = [0]
    input[0..-2].each_index do |index|
      solution_array.push(input[index+1] - input[index])
    end
    return solution_array
  end

  def self.parse_cars(input)
    cars = Hash.new {|h,k| h[k] = [] }
    input.each do |line|
      line = line.split
      if line.first == "Vehicle"
        time_array = line.last[0..-2].split(':')
        time_speed = (time_array[0].to_i * (3600) + (time_array[1].to_i * (60)) + time_array[2].to_i).to_f
        cars[line[1..2].join(' ')].push(time_speed)
      end
    end
    cars.each {|k,v| cars[k] = self.between_points(v)}
    return cars
  end

  # def self.compare(cars_hash,cameras_array,speed_in_mps)
  #   speeders = []
  #   cars_hash.each do |key,value_array|
  #     value_array.each_index do |index|
  #       if value_array[index] > cameras_array[index]
  #         speed = (value_array[index] - cameras_array[index]) / speed_in_mps
  #         speeders << "Car #{key} #{speed}"
  #       end
  #     end
  #   end
  #   return speeders
  # end

end

text = "Speed limit is 60.00 mph.
Speed camera number 1 is 0 metres down the motorway.
Speed camera number 2 is 600 metres down the motorway.
Speed camera number 3 is 855 metres down the motorway.
Speed camera number 4 is 1355 metres down the motorway.
Start of log for camera 1.
Vehicle G122 IVL passed camera 1 at 09:36:12.
Vehicle H151 KEE passed camera 1 at 09:36:15.
Vehicle U109 FIJ passed camera 1 at 09:36:20.
Vehicle LO04 CHZ passed camera 1 at 09:36:23.
Vehicle I105 AEV passed camera 1 at 09:36:28.
Vehicle J828 EBC passed camera 1 at 09:36:29.
Vehicle WF EP7 passed camera 1 at 09:36:32.
Vehicle H108 KYL passed camera 1 at 09:36:33.
Vehicle R815 FII passed camera 1 at 09:36:34.
Vehicle QW04 SQU passed camera 1 at 09:36:34.
Start of log for camera 2.
Vehicle G122 IVL passed camera 2 at 09:36:42.
Vehicle LO04 CHZ passed camera 2 at 09:36:46.
Vehicle H151 KEE passed camera 2 at 09:36:51.
Vehicle QW04 SQU passed camera 2 at 09:36:53.
Vehicle J828 EBC passed camera 2 at 09:36:53.
Vehicle R815 FII passed camera 2 at 09:36:55.
Vehicle U109 FIJ passed camera 2 at 09:36:56.
Vehicle H108 KYL passed camera 2 at 09:36:57.
Vehicle I105 AEV passed camera 2 at 09:37:05.
Vehicle WF EP7 passed camera 2 at 09:37:10.
Start of log for camera 3.
Vehicle LO04 CHZ passed camera 3 at 09:36:55.
Vehicle G122 IVL passed camera 3 at 09:36:56.
Vehicle H151 KEE passed camera 3 at 09:37:03.
Vehicle QW04 SQU passed camera 3 at 09:37:03.
Vehicle J828 EBC passed camera 3 at 09:37:04.
Vehicle R815 FII passed camera 3 at 09:37:09.
Vehicle U109 FIJ passed camera 3 at 09:37:11.
Vehicle H108 KYL passed camera 3 at 09:37:12.
Vehicle I105 AEV passed camera 3 at 09:37:20.
Vehicle WF EP7 passed camera 3 at 09:37:23.
Start of log for camera 4.
Vehicle LO04 CHZ passed camera 4 at 09:37:13.
Vehicle QW04 SQU passed camera 4 at 09:37:24.
Vehicle J828 EBC passed camera 4 at 09:37:26.
Vehicle G122 IVL passed camera 4 at 09:37:28.
Vehicle R815 FII passed camera 4 at 09:37:28.
Vehicle H151 KEE passed camera 4 at 09:37:29.
Vehicle H108 KYL passed camera 4 at 09:37:36.
Vehicle I105 AEV passed camera 4 at 09:37:42.
Vehicle WF EP7 passed camera 4 at 09:37:44.
Vehicle U109 FIJ passed camera 4 at 09:37:45."

SpeedCamera.parse(text)
