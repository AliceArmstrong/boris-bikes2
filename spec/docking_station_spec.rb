require 'docking_station'

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock_bike)
  end

  it 'tests error message if released while docking station empty' do
  #  expect(subject.release_bike).to eq()
    expect{subject.release_bike}.to raise_error "The docking station is empty."
  end

  it 'tests error message if docked while docking station is full' do
    # subject.release_bike
    counter = 0
    20.times {subject.dock_bike(Bike.new)}
    expect{subject.dock_bike(Bike.new)}.to raise_error "The docking station is full."
  end

  # it 'tests docking the bike makes docking station full' do
  #   expect(subject.dock_bike).to eq("The docking station is full")
  # end

  # it 'gets a bike' do
  #  expect(result).to eq(Bike.new)
  # end
  it 'checks if a bike is working' do
    expect(Bike.new.working?).to eq(true)
  end
  it 'checks if a bike is docked' do
    expect(Bike.new.docked?).to eq(true)
  end



  # it 'checks status' do
  #   expect(Bike.new.output).to eq(string)
  # end
end


# it { subject.respond_to? (:release_bike) }
