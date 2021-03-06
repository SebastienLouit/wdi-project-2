class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :serving
  



  before_validation :add_default_status

  def accept!
      self.status = "accepted"
      self.save
  end

  def reject!
      self.status = "rejected"
      self.save
  end

  def cancel!
      self.destroy
  end


  private
      def add_default_status
          self.status = "pending" if self.status.nil?
      end

end
