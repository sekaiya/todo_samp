require 'active_record'

module TodoSamp
	class Task < ActiveRecord::Base
		scope :status_is, ->(status){ where(status: status)}
		
		NOT_YET = 0
		DONE = 1
		PENDING = 2
		
		STATUS = {
			'NOT_YET' => NOT_YET,
			'DONE' => DONE,
			'PENDING' => PENDING
		}.freeze
		
		validate :name,		presence:	true,length:{maximum: 140}
		validate :content,	presence:	true
		validate :status,	numericality:	true,	inclusion:{in:	STATUS.values}
	end
end
