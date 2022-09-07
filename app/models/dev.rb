class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        if (self.freebies.where(item_name: item_name)==[])
            return false
        else
            return true
        end
    end

    def give_away(dev,freebie)
        if (received_one?(freebie.item_name))
            
            Freebie.create(item_name: freebie.item_name, value: freebie.value, company_id: freebie.company_id, dev_id: dev.id)
            freebie.destroy
        end

    end

end
