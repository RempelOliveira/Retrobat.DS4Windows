import json
import subprocess


try:
  def cli():
    output = subprocess.Popen(
      "where HidHideCLI", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True, encoding="utf-8")

    return f'"{output.communicate()[0].strip()}"'

  HidHideCLI = cli()

  def run():
    output = subprocess.Popen(
      HidHideCLI + " --dev-gaming", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)

    return output.communicate()[0]

  def to_json(data):
    return json.loads(data.decode("latin").encode("utf-8"))

  for data in to_json(run()):  
    device = data.get("devices", [{}])[0]

    if device.get("serialNumber"):
        subprocess.Popen(HidHideCLI + f' --dev-hide "{device["deviceInstancePath"]}"')

except:
  pass
