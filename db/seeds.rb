def seeder model, key, data
  item = model.where({key => data[key]}).first
  if item.nil?
    puts "Seeding #{model.name} #{data[key]}"
    item = model.create(data)
  end
end


if Object.const_get('Agent')
  bob = seeder Agent, :first_name, {first_name: 'Bob', last_name: 'Williams', phone_number: '(415)-555-5556'}
  john = seeder Agent, :first_name, {first_name: 'John', last_name: 'Smith', phone_number: '(415)-555-6666'}
  walter = seeder Agent, :first_name, {first_name: 'Walter', last_name: 'White', phone_number: '(415)-555-7777'}
  paul = seeder Agent, :first_name, {first_name: 'Paul', last_name: 'Jones', phone_number: '(415)-555-8888'}


  if Object.const_get('Band')
    beafles = seeder Band, :name, {name: 'The Beafles', signed_on: Date.parse('2001-02-03'), agent: bob}
    aces = seeder Band, :name, {name: 'The Aces', signed_on: Date.parse('1980-07-22'), agent: john}
    beanies = seeder Band, :name, {name: 'Beanies', signed_on: Date.parse('1990-05-21'), agent: walter}
    walnuts = seeder Band, :name, {name: 'The Walnuts', signed_on: Date.parse('1999-12-31'), agent: walter}

    if Object.const_get('Track')
      goldstar = seeder Track, :title, {title: 'GoldSTAR', released_on: Date.parse('2012-02-03'), seconds: 291, band: beafles}
      silverstar = seeder Track, :title, {title: 'SilverMoon', released_on: Date.parse('2011-01-12'), seconds: 302, band: beafles}
      spades = seeder Track, :title, {title: 'Ace of Spades', released_on: Date.parse('2010-04-04'), seconds: 293, band: aces}
      muffled = seeder Track, :title, {title: 'Muffled', released_on: Date.parse('2009-05-05'), seconds: 201, band: beanies}
      nutty = seeder Track, :title, {title: 'Nutty Jam', released_on: Date.parse('2009-05-05'), seconds: 182, band: walnuts}
      hard_to_hear  = seeder Track, :title, {title: 'Hard to Hear', released_on: Date.parse('2011-01-07'), seconds: 306, band: aces}
      big_thing = seeder Track, :title, {title: 'Next Big Thing', released_on: Date.parse('2012-02-03'), seconds: 291, band: beafles}

      if Object.const_get('Album')
        stars = seeder Album, :title, {title: 'Stars', released_on: Date.parse('2013-02-03'), tracks: [goldstar, silverstar,spades]}
        stars = seeder Album, :title, {title: 'Silent Movie Soundtrack', released_on: Date.parse('2014-01-03'), tracks: [muffled, hard_to_hear, big_thing,nutty]}
      end
    end
  end
end

