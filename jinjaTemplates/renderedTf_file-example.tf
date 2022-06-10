
#######  - START 
############# Create terraform Cloud team for team: teamname01
resource "tfe_team" "teamname01_plan" {
  name         = "teamname01_plan"
  #sso_team_id  = "InserAADObjectIdHere01"   ##Optional
  organization = "meltaier-lab"
}
resource "tfe_team" "teamname01_write" {
  name         = "teamname01_write"
  organization = "meltaier-lab"
}

############# Create terraform Cloud variable set for team: teamname01
resource "tfe_variable_set" "varset_teamname01_write" {
  name          = "varset_teamname01"
  description   = "Variable set for teamname01"
  workspace_ids = [tfe_workspace.wspce_teamname01_APP01_DEV.id,tfe_workspace.wspce_teamname01_APP01_PRD.id]
  organization = "meltaier-lab"

}

######################## Create each terraform workspace for team: teamname01
    
resource "tfe_workspace" "wspce_teamname01_APP01_DEV" {
  name         = "wspce_teamname01_APP01_DEV"
  tag_names    = ["tag1", "tag2", "tag3"]
  organization = "meltaier-lab"

  }
    
resource "tfe_workspace" "wspce_teamname01_APP01_PRD" {
  name         = "wspce_teamname01_APP01_PRD"
  tag_names    = ["tag5", "tag6", "tag7"]
  organization = "meltaier-lab"

  }
  

######################## Enforce plan and write access for each workspace
  
resource "tfe_team_access" "teamname01_wspce_teamname01_APP01_DEV_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamname01_plan.id
  workspace_id = tfe_workspace.wspce_teamname01_APP01_DEV.id
}
resource "tfe_team_access" "teamname01_wspce_teamname01_APP01_DEV_write_access" {
  access       = "write"
  team_id      = tfe_team.teamname01_write.id
  workspace_id = tfe_workspace.wspce_teamname01_APP01_DEV.id
}
  
resource "tfe_team_access" "teamname01_wspce_teamname01_APP01_PRD_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamname01_plan.id
  workspace_id = tfe_workspace.wspce_teamname01_APP01_PRD.id
}
resource "tfe_team_access" "teamname01_wspce_teamname01_APP01_PRD_write_access" {
  access       = "write"
  team_id      = tfe_team.teamname01_write.id
  workspace_id = tfe_workspace.wspce_teamname01_APP01_PRD.id
}
  
######################################################################### - END

#######  - START 
############# Create terraform Cloud team for team: teamnname02
resource "tfe_team" "teamnname02_plan" {
  name         = "teamnname02_plan"
  #sso_team_id  = "InserAADObjectIdHere02"   ##Optional
  organization = "meltaier-lab"
}
resource "tfe_team" "teamnname02_write" {
  name         = "teamnname02_write"
  organization = "meltaier-lab"
}

############# Create terraform Cloud variable set for team: teamnname02
resource "tfe_variable_set" "varset_teamnname02_write" {
  name          = "varset_teamnname02"
  description   = "Variable set for teamnname02"
  workspace_ids = [tfe_workspace.wspce_teamname02_APP01_DEV.id,tfe_workspace.wspce_teamname02_APP01_PRD.id]
  organization = "meltaier-lab"

}

######################## Create each terraform workspace for team: teamnname02
    
resource "tfe_workspace" "wspce_teamname02_APP01_DEV" {
  name         = "wspce_teamname02_APP01_DEV"
  tag_names    = ["tag1", "tag2", "tag3"]
  organization = "meltaier-lab"

  }
    
resource "tfe_workspace" "wspce_teamname02_APP01_PRD" {
  name         = "wspce_teamname02_APP01_PRD"
  tag_names    = ["tag5", "tag6", "tag7"]
  organization = "meltaier-lab"

  }
  

######################## Enforce plan and write access for each workspace
  
resource "tfe_team_access" "teamnname02_wspce_teamname02_APP01_DEV_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamnname02_plan.id
  workspace_id = tfe_workspace.wspce_teamname02_APP01_DEV.id
}
resource "tfe_team_access" "teamnname02_wspce_teamname02_APP01_DEV_write_access" {
  access       = "write"
  team_id      = tfe_team.teamnname02_write.id
  workspace_id = tfe_workspace.wspce_teamname02_APP01_DEV.id
}
  
resource "tfe_team_access" "teamnname02_wspce_teamname02_APP01_PRD_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamnname02_plan.id
  workspace_id = tfe_workspace.wspce_teamname02_APP01_PRD.id
}
resource "tfe_team_access" "teamnname02_wspce_teamname02_APP01_PRD_write_access" {
  access       = "write"
  team_id      = tfe_team.teamnname02_write.id
  workspace_id = tfe_workspace.wspce_teamname02_APP01_PRD.id
}
  
######################################################################### - END

#######  - START 
############# Create terraform Cloud team for team: teamnname03
resource "tfe_team" "teamnname03_plan" {
  name         = "teamnname03_plan"
  #sso_team_id  = "InserAADObjectIdHere02"   ##Optional
  organization = "meltaier-lab"
}
resource "tfe_team" "teamnname03_write" {
  name         = "teamnname03_write"
  organization = "meltaier-lab"
}

############# Create terraform Cloud variable set for team: teamnname03
resource "tfe_variable_set" "varset_teamnname03_write" {
  name          = "varset_teamnname03"
  description   = "Variable set for teamnname03"
  workspace_ids = [tfe_workspace.wspce_teamname03_APP01_DEV.id,tfe_workspace.wspce_teamname03_APP01_PRD.id,tfe_workspace.wspce_teamname03_APP01_UAT.id]
  organization = "meltaier-lab"

}

######################## Create each terraform workspace for team: teamnname03
    
resource "tfe_workspace" "wspce_teamname03_APP01_DEV" {
  name         = "wspce_teamname03_APP01_DEV"
  tag_names    = ["tag1", "tag2", "tag3"]
  organization = "meltaier-lab"

  }
    
resource "tfe_workspace" "wspce_teamname03_APP01_PRD" {
  name         = "wspce_teamname03_APP01_PRD"
  tag_names    = ["tag5", "tag6", "tag7"]
  organization = "meltaier-lab"

  }
    
resource "tfe_workspace" "wspce_teamname03_APP01_UAT" {
  name         = "wspce_teamname03_APP01_UAT"
  tag_names    = ["tag5", "tag6", "tag7"]
  organization = "meltaier-lab"

  }
  

######################## Enforce plan and write access for each workspace
  
resource "tfe_team_access" "teamnname03_wspce_teamname03_APP01_DEV_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamnname03_plan.id
  workspace_id = tfe_workspace.wspce_teamname03_APP01_DEV.id
}
resource "tfe_team_access" "teamnname03_wspce_teamname03_APP01_DEV_write_access" {
  access       = "write"
  team_id      = tfe_team.teamnname03_write.id
  workspace_id = tfe_workspace.wspce_teamname03_APP01_DEV.id
}
  
resource "tfe_team_access" "teamnname03_wspce_teamname03_APP01_PRD_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamnname03_plan.id
  workspace_id = tfe_workspace.wspce_teamname03_APP01_PRD.id
}
resource "tfe_team_access" "teamnname03_wspce_teamname03_APP01_PRD_write_access" {
  access       = "write"
  team_id      = tfe_team.teamnname03_write.id
  workspace_id = tfe_workspace.wspce_teamname03_APP01_PRD.id
}
  
resource "tfe_team_access" "teamnname03_wspce_teamname03_APP01_UAT_plan_access" {
  access       = "plan"
  team_id      = tfe_team.teamnname03_plan.id
  workspace_id = tfe_workspace.wspce_teamname03_APP01_UAT.id
}
resource "tfe_team_access" "teamnname03_wspce_teamname03_APP01_UAT_write_access" {
  access       = "write"
  team_id      = tfe_team.teamnname03_write.id
  workspace_id = tfe_workspace.wspce_teamname03_APP01_UAT.id
}
  
######################################################################### - END


terraform {
  cloud {
    organization = "meltaier-lab"

    workspaces {
      name = "test"
    }
  }
}