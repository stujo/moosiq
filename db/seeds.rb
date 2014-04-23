

bob = Agent.where({first_name: 'Bob'}).first

agents = Agent.create(
    [
        {first_name: 'Bob', last_name: 'Williams', phone_number: '(415)-555-5556'},
        {first_name: 'John', last_name: 'Smith', phone_number: '(415)-555-6666'},
        {first_name: 'Walter', last_name: 'White', phone_number: '(415)-555-7777'}
    ]
) if bob.nil?

beafles = Band.where({name: 'The Beafles',}).first

bands = Band.create(
    [
        {name: 'The Beafles', signed_on: Date.parse('2001-02-03'), agent: bob},
        {name: 'The Aces', signed_on: Date.parse('1980-07-22'), agent: bob},
    ]
) if beafles.nil?



