import json
import subprocess


try:
  def run():
    output = subprocess.Popen(
      "HidHideCLI --dev-gaming", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)

    return output.communicate()[0]

  def to_json(data):
    return json.loads(data.decode("latin").encode("utf-8"))

  for data in to_json(run()):  
    device = data.get("devices", [{}])[0]

    if device.get("serialNumber"):
        subprocess.Popen(f'HidHideCLI --dev-hide "{device["deviceInstancePath"]}"')

except:
  pass
