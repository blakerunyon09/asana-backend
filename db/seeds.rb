Card.destroy_all
User.destroy_all

user1 = User.create(username: 'brunyon09', password: 'Ruby123')

Card.create(name: 'Take Out Trash', description: 'Take out the trash each monday before leaving for work.', user: user1)
Card.create(name: 'Mow Lawn', description: 'Mow the lawn on the second Tuesday of each month.', user: user1)
Card.create(name: 'Water Garden', description: 'Spray a hose over the garden before you leave for Mexico.', user: user1)