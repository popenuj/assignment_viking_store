
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

    def generate_credit_cards(owners)
      number_of_owners = owners.length
      (number_of_owners/ (random_number(2, 1))).times do
        owner = owners.sample
        CreditCard.create(user_id: owner.id,
                          expiration_date: fake_expiry_date,
                          name: owner.name,
                          number: fake_credit_card_number)
      end
    end

    private

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

      def random_number(max, min = 0)
        Random.new.rand(max) + min
      end
  end
end
