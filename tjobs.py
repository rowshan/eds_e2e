import unittest
import requests
import os


class TJob(unittest.TestCase):
	# proxyurl="http://" + os.environ['ET_SUT_HOST'] + ":8080/"
	print "Value of the Environment variable ET_EUS_API is:" + os.environ['JAVA_HOME']
	print "Value of the Environment variable ET_ETM_API is:" + os.environ['ET_ETM_API']


if __name__ == "__main__":
	unittest.main()
