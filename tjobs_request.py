import unittest
import requests
import os
import sys


class TJob(unittest.TestCase):
	proxyurl = "http://" + str(sys.argv[1]) + ":8080/"
	proxies = {'http': proxyurl, 'https': proxyurl}

	def test_send_request(self):
		s = requests.Session()
		response = s.get('http://www.elastest.io/', proxies=self.proxies, verify=False)
		# response=s.get('http://etm:8091/')
		print (response.headers)
		assert "Elastest" in response.text


if __name__ == "__main__":
	tjob = TJob()
	tjob.test_send_request()
