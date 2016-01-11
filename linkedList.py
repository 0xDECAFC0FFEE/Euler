class node():
	nextNode = None
	currentData = None
	def updateNode(self, currentData, nextNode):
		self.nextNode = nextNode
		self.currentData = currentData

class linkedList(Object):

	firstNode = None

	def __init__(self, list):
		nextNode = node()
		self.firstNode = nextNode
		for x in list:
			