# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.

from jinja2 import Environment, FileSystemLoader
import sys
import yaml

##Print each arg
for eachArg in sys.argv:
    print(eachArg)

##Load YAML config file location
yaml_file_location = sys.argv[1]
template_location = sys.argv[2]
#yaml_file_location = "teams_data.yaml"
#template_location = "team-initial-setup-mixedAccess.j2"

# Config

config = yaml.full_load(open(yaml_file_location))

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
file_loader = FileSystemLoader('templates')
env = Environment(loader=file_loader)

# inputFilter = ['wspce_teamname01_APP01_DEV','wspce_teamname01_APP01_PRD']


def makelistofworkspaces(input):
    a=[]                ## Create empty array
    for i in input:     ##Loop through each string
        i=i+'.id'       ## Add suffix
        i='tfe_workspace.'+i  ## Add prefix
        i=i.replace("'", "") ## Remove '
        a.append(i)         ## add string to array
        #print (i)

    output= ','.join(a)     ##join all array strings together using commas
    return output
    #print(output)


# makelistofworkspaces(inputFilter)
# print (funcoutput)

env.filters['makelistofworkspaces'] = makelistofworkspaces


template = env.get_template(template_location)

# output = template.render(vpcname="TestVPC")
print("PRINTING RENDERED TERRAFORM TEMPLATE:")
print("#######################################")
print(template.render(config))
with open("renderedTf_file.tf", "w") as fh:
    fh.write(template.render(config))
# print (output)
