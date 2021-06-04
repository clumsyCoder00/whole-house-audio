import time, json, requests; 

activeStream = ''
# https://github.com/badaix/snapcast/blob/master/doc/json_rpc_api/v2_0_0.md#groupsetstream
# https://github.com/badaix/snapcast/blob/master/control/scripts.md

url = 'http://127.0.0.1:1780/jsonrpc'
headers = {'Content-Type': 'application/json'}
values = {
	"id":1,
	"jsonrpc":"2.0",
	"method": "Server.GetStatus"
	}

while True:
	activeStreamCount = 0
	req = requests.post(url, data=json.dumps(values), headers=headers)
	req_json = json.loads(req.text)

	for thisStream in req_json['result']['server']['streams']:
		if thisStream['status'] == 'playing':
			activeStreamCount +=1
			activeStream = thisStream['id']

	if activeStreamCount == 1:
		for thisGroup in req_json['result']['server']['groups']:
			if thisGroup['stream_id'] != activeStream:
				set_stream_values = {
					"id":4,
					"jsonrpc":"2.0",
					"method": "Group.SetStream",
					"params": {"id":thisGroup['id'],"stream_id":activeStream}
					}
				req = requests.post(url, data=json.dumps(set_stream_values), headers=headers)
				print("\nset group: " + thisGroup['id'] + " stream to: " + activeStream)
		
		print('.', end='', flush=True)
		time.sleep(1)
