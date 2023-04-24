import subprocess


try:
  def run():
    output = subprocess.Popen(
      "HidHideCLI --dev-list", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)

    return output.communicate()[0]

  def to_list(data):
    return data.decode("latin").replace("--dev-hide", "").replace('"', "").split()

  for data in to_list(run()):
    subprocess.Popen(f'HidHideCLI --dev-unhide "{data}"').wait()

except:
  pass
