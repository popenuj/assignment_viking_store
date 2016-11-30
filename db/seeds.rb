
# generate users
# generate users' credit card(s)
# generate shopping cart
#
# generate country
# generate state
# generate address
#
# generate product categories
# generate product


module Seeder

  class << self

    def generate_users(n)
      n.times do
        User.create(name: fake_name,
                    email: fake_email,
                    phone_number: fake_phone_number)
      end
    end

    def generate_credit_cards_for(owners)
      number_of_owners = owners.length
      random_number(min: (number_of_owners / 3),
                    max: number_of_owners).times do
        credit_card_for(owners.sample)
      end
    end

    def generate_countries(n)
      n.times { Country.create(name: country_name) }
    end

    def generate_addresses_for(owners)
      owners.each do |owner|
        address_for(owner)
      end
    end

    private

      def credit_card_for(owner)
        CreditCard.create(user_id: owner.id,
                          expiration_date: fake_expiry_date,
                          name: owner.name,
                          number: fake_credit_card_number)
      end

      def address_for(owner)
        Address.create(user_id: owner.id,
                       country_id:,
                       state_id:,
                       city:,
                       zip_code:,
                       street:,
                       default:,
                       type: )
      end

      def fake_name
        Faker::Name.name
      end

      def fake_email
        Faker::Internet.email
      end

      def fake_phone_number
        Faker::PhoneNumber.phone_number
      end

      def fake_expiry_date
        Faker::Business.credit_card_expiry_date
      end

      def fake_credit_card_number
        Faker::Business.credit_card_number
      end

      def random_number(min: 0, max:)
        Random.new.rand(min..max)
      end

  end
end

Seeder.generate_users(50)
Seeder.generate_credit_cards(User.all)
