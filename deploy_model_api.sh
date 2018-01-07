#!/usr/bin/env python
from googleapiclient import discovery
from oauth2client.client import GoogleCredentials
import json
credentials = GoogleCredentials.get_application_default()




api = discovery.build('ml', 'v1', credentials=credentials,
      discoveryServiceUrl=
      'https://storage.googleapis.com/cloud-ml/discovery/ml_v1_discovery.json')

PROJECT = 'cloud-training-demos'
parent = 'projects/%s/models/%s/versions/%s' % (PROJECT, 'flights', 'v1')
response = api.projects().predict(body=request_data, name=parent).execute()
print "response={0}".format(response)