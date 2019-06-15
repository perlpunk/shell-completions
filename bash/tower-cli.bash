#!bash

# Generated with perl module App::Spec v0.010

_tower-cli() {

    COMPREPLY=()
    local program=tower-cli
    local cur prev words cword
    _init_completion -n : || return
    declare -a FLAGS
    declare -a OPTIONS
    declare -a MYWORDS

    local INDEX=`expr $cword - 1`
    MYWORDS=("${words[@]:1:$cword}")

    FLAGS=('--help' 'Show command help' '-h' 'Show command help')
    OPTIONS=('--format' 'Output format')
    __tower-cli_handle_options_flags

    case $INDEX in

    0)
        __comp_current_options || return
        __tower-cli_dynamic_comp 'commands' 'ad_hoc'$'\t''Launch commands based on playbook given at...'$'\n''config'$'\t''Read or write tower-cli configuration'$'\n''credential'$'\t''Manage credentials within Ansible Tower'$'\n''credential_type'$'\t''Manage credential types within Ansible Tower'$'\n''group'$'\t''Manage groups belonging to an inventory'$'\n''help'$'\t''Show command help'$'\n''host'$'\t''Manage hosts belonging to a group within an...'$'\n''instance'$'\t''Check instances within Ansible Tower'$'\n''instance_group'$'\t''Check instance groups within Ansible Tower'$'\n''inventory'$'\t''Manage inventory within Ansible Tower'$'\n''inventory_script'$'\t''Manage inventory scripts within Ansible...'$'\n''inventory_source'$'\t''Manage inventory sources within Ansible...'$'\n''inventory_update'$'\t''Launch or monitor inventory source updates'$'\n''job'$'\t''Launch or monitor jobs'$'\n''job_template'$'\t''Manage job templates'$'\n''label'$'\t''Manage labels within Ansible Tower'$'\n''node'$'\t''Manage nodes inside of a workflow job...'$'\n''notification_template'$'\t''Manage notification templates within Ansible...'$'\n''organization'$'\t''Manage organizations within Ansible Tower'$'\n''project'$'\t''Manage projects within Ansible Tower'$'\n''project_update'$'\t''Launch or monitor project updates'$'\n''role'$'\t''Add and remove users/teams from roles'$'\n''schedule'$'\t''Manage schedules within Ansible Tower'$'\n''setting'$'\t''Manage settings within Ansible Tower'$'\n''team'$'\t''Manage teams within Ansible Tower'$'\n''user'$'\t''Manage users within Ansible Tower'$'\n''version'$'\t''Display version information'$'\n''workflow'$'\t''Manage workflow job templates'$'\n''workflow_job'$'\t''Launch or monitor workflow jobs'

    ;;
    *)
    # subcmds
    case ${MYWORDS[0]} in
      _meta)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'completion'$'\t''Shell completion functions'$'\n''pod'$'\t''Pod documentation'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          completion)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'generate'$'\t''Generate self completion'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              generate)
                FLAGS+=('--zsh' 'for zsh' '--bash' 'for bash')
                OPTIONS+=('--name' 'name of the program (optional, override name in spec)')
                __tower-cli_handle_options_flags
                case ${MYWORDS[$INDEX-1]} in
                  --format)
                    _tower-cli_compreply "human" "json" "yaml" "id"
                    return
                  ;;
                  --name)
                  ;;

                esac
                case $INDEX in

                *)
                    __comp_current_options || return
                ;;
                esac
              ;;
            esac

            ;;
            esac
          ;;
          pod)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'generate'$'\t''Generate self pod'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              generate)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
        esac

        ;;
        esac
      ;;
      ad_hoc)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'cancel'$'\t''Cancel a currently running job'$'\n''delete'$'\t''Remove the given ad hoc'$'\n''get'$'\t''Return one and exactly one ad hoc'$'\n''launch'$'\t''Launch a new ad-hoc command'$'\n''list'$'\t''Return a list of ad hocs'$'\n''monitor'$'\t''Stream the standard output from a job,...'$'\n''relaunch'$'\t''Relaunch a stopped job'$'\n''status'$'\t''Print the current job status'$'\n''stdout'$'\t''Print out the standard out of a unified job...'$'\n''wait'$'\t''Wait for a running job to finish'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          cancel)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            case ${MYWORDS[$INDEX-1]} in
              --format)
                _tower-cli_compreply "human" "json" "yaml" "id"
                return
              ;;

            esac
            case $INDEX in
              2)
                  __comp_current_options || return
              ;;


            *)
                __comp_current_options || return
            ;;
            esac
          ;;
          launch)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          monitor)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          relaunch)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          status)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          stdout)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          wait)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      config)
        FLAGS+=('--global' 'Write this config option to the global configuration.' '--unset' 'Remove reference to this configuration option from the config file.')
        OPTIONS+=('--scope' '')
        __tower-cli_handle_options_flags
        case ${MYWORDS[$INDEX-1]} in
          --format)
            _tower-cli_compreply "human" "json" "yaml" "id"
            return
          ;;
          --scope)
            _tower-cli_compreply "local" "user" "global"
            return
          ;;

        esac
        case $INDEX in

        *)
            __comp_current_options || return
        ;;
        esac
      ;;
      credential)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'copy'$'\t''Copy a credential.'$'\n''create'$'\t''Create a credential.'$'\n''delete'$'\t''Remove the given credential.'$'\n''get'$'\t''Return one and exactly one credential.'$'\n''list'$'\t''Return a list of credentials.'$'\n''modify'$'\t''Modify an already existing credential.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          create)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          modify)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      credential_type)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      group)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'associate'$'\t''Associate this group with the specified...'$'\n''copy'$'\t''Copy a group.'$'\n''create'$'\t''Create a group.'$'\n''delete'$'\t''Remove the given group.'$'\n''disassociate'$'\t''Disassociate this group from the specified...'$'\n''get'$'\t''Return one and exactly one group.'$'\n''list'$'\t''Return a list of groups.'$'\n''modify'$'\t''Modify an already existing group.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          associate)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          create)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          modify)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      help)
        FLAGS+=('--all' '')
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'ad_hoc'$'\n''config'$'\n''credential'$'\n''credential_type'$'\n''group'$'\n''host'$'\n''instance'$'\n''instance_group'$'\n''inventory'$'\n''inventory_script'$'\n''inventory_source'$'\n''inventory_update'$'\n''job'$'\n''job_template'$'\n''label'$'\n''node'$'\n''notification_template'$'\n''organization'$'\n''project'$'\n''project_update'$'\n''role'$'\n''schedule'$'\n''setting'$'\n''team'$'\n''user'$'\n''version'$'\n''workflow'$'\n''workflow_job'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          _meta)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'completion'$'\n''pod'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              completion)
                __tower-cli_handle_options_flags
                case $INDEX in

                3)
                    __comp_current_options || return
                    __tower-cli_dynamic_comp 'commands' 'generate'

                ;;
                *)
                # subcmds
                case ${MYWORDS[3]} in
                  generate)
                    __tower-cli_handle_options_flags
                    __comp_current_options true || return # no subcmds, no params/opts
                  ;;
                esac

                ;;
                esac
              ;;
              pod)
                __tower-cli_handle_options_flags
                case $INDEX in

                3)
                    __comp_current_options || return
                    __tower-cli_dynamic_comp 'commands' 'generate'

                ;;
                *)
                # subcmds
                case ${MYWORDS[3]} in
                  generate)
                    __tower-cli_handle_options_flags
                    __comp_current_options true || return # no subcmds, no params/opts
                  ;;
                esac

                ;;
                esac
              ;;
            esac

            ;;
            esac
          ;;
          ad_hoc)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'cancel'$'\n''delete'$'\n''get'$'\n''launch'$'\n''list'$'\n''monitor'$'\n''relaunch'$'\n''status'$'\n''stdout'$'\n''wait'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              cancel)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              launch)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              monitor)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              relaunch)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              status)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              stdout)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              wait)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          config)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          credential)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'copy'$'\n''create'$'\n''delete'$'\n''get'$'\n''list'$'\n''modify'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              create)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              modify)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          credential_type)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          group)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'associate'$'\n''copy'$'\n''create'$'\n''delete'$'\n''disassociate'$'\n''get'$'\n''list'$'\n''modify'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              associate)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              create)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              modify)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          host)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'associate'$'\n''copy'$'\n''create'$'\n''delete'$'\n''disassociate'$'\n''get'$'\n''insights'$'\n''list'$'\n''list_facts'$'\n''modify'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              associate)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              create)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              insights)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list_facts)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              modify)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          instance)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          instance_group)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          inventory)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'associate_ig'$'\n''batch_update'$'\n''copy'$'\n''create'$'\n''delete'$'\n''disassociate_ig'$'\n''get'$'\n''list'$'\n''modify'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              associate_ig)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              batch_update)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              create)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate_ig)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              modify)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          inventory_script)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          inventory_source)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          inventory_update)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          job)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'cancel'$'\n''delete'$'\n''get'$'\n''launch'$'\n''list'$'\n''monitor'$'\n''relaunch'$'\n''status'$'\n''stdout'$'\n''wait'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              cancel)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              launch)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              monitor)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              relaunch)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              status)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              stdout)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              wait)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          job_template)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'associate_credential'$'\n''associate_ig'$'\n''associate_label'$'\n''associate_notification_template'$'\n''callback'$'\n''copy'$'\n''create'$'\n''delete'$'\n''disassociate_credential'$'\n''disassociate_ig'$'\n''disassociate_label'$'\n''disassociate_notification_template'$'\n''get'$'\n''list'$'\n''modify'$'\n''survey'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              associate_credential)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              associate_ig)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              associate_label)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              associate_notification_template)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              callback)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              create)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate_credential)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate_ig)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate_label)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              disassociate_notification_template)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              modify)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              survey)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          label)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          node)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          notification_template)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          organization)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          project)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'copy'$'\n''create'$'\n''delete'$'\n''get'$'\n''list'$'\n''modify'$'\n''monitor'$'\n''status'$'\n''stdout'$'\n''update'$'\n''wait'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              create)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              modify)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              monitor)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              status)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              stdout)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              update)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              wait)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          project_update)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'cancel'$'\n''delete'$'\n''get'$'\n''list'$'\n''monitor'$'\n''relaunch'$'\n''status'$'\n''stdout'$'\n''wait'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              cancel)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              delete)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              monitor)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              relaunch)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              status)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              stdout)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              wait)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          role)
            __tower-cli_handle_options_flags
            case $INDEX in

            2)
                __comp_current_options || return
                __tower-cli_dynamic_comp 'commands' 'copy'$'\n''get'$'\n''grant'$'\n''list'$'\n''revoke'

            ;;
            *)
            # subcmds
            case ${MYWORDS[2]} in
              copy)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              get)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              grant)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              list)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
              revoke)
                __tower-cli_handle_options_flags
                __comp_current_options true || return # no subcmds, no params/opts
              ;;
            esac

            ;;
            esac
          ;;
          schedule)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          setting)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          team)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          user)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          version)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          workflow)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          workflow_job)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      host)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'associate'$'\t''Associate a group with this host'$'\n''copy'$'\t''Copy a host'$'\n''create'$'\t''Create a host'$'\n''delete'$'\t''Remove the given host'$'\n''disassociate'$'\t''Disassociate a group from this host'$'\n''get'$'\t''Return one and exactly one host'$'\n''insights'$'\t''Return a JSON host of host insights'$'\n''list'$'\t''Return a list of hosts'$'\n''list_facts'$'\t''Return a JSON host of all available facts of...'$'\n''modify'$'\t''Modify an already existing host'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          associate)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          create)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            FLAGS+=('--name' '[REQUIRED] The name field.' '-n' '[REQUIRED] The name field.' '--description' 'The description field.' '-d' 'The description field.' '--inventory' '[REQUIRED] The inventory field.' '-i' '[REQUIRED] The inventory field.' '--enabled' 'The enabled field.' '--variables' 'Host variables, use "@" to get from file.' '--insights-system-id' 'The insights_system_id field.')
            __tower-cli_handle_options_flags
            case ${MYWORDS[$INDEX-1]} in
              --format)
                _tower-cli_compreply "human" "json" "yaml" "id"
                return
              ;;

            esac
            case $INDEX in
              2)
                  __comp_current_options || return
                    _tower-cli_host_get_param_host_id_completion
              ;;


            *)
                __comp_current_options || return
            ;;
            esac
          ;;
          insights)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list_facts)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          modify)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      instance)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      instance_group)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      inventory)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'associate_ig'$'\t''Associate an ig with this inventory.'$'\n''batch_update'$'\t''Update all related inventory sources of the...'$'\n''copy'$'\t''Copy an inventory.'$'\n''create'$'\t''Create an inventory.'$'\n''delete'$'\t''Remove the given inventory.'$'\n''disassociate_ig'$'\t''Disassociate an ig with this inventory.'$'\n''get'$'\t''Return one and exactly one inventory.'$'\n''list'$'\t''Return a list of inventories.'$'\n''modify'$'\t''Modify an already existing inventory.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          associate_ig)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          batch_update)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          create)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate_ig)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          modify)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      inventory_script)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      inventory_source)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      inventory_update)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      job)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'cancel'$'\t''Cancel a currently running job'$'\n''delete'$'\t''Remove the given job'$'\n''get'$'\t''Return one and exactly one job'$'\n''launch'$'\t''Launch a new job based on a job template'$'\n''list'$'\t''Return a list of jobs'$'\n''monitor'$'\t''Stream the standard output from a job,...'$'\n''relaunch'$'\t''Relaunch a stopped job'$'\n''status'$'\t''Print the current job status'$'\n''stdout'$'\t''Print out the standard out of a unified job...'$'\n''wait'$'\t''Wait for a running job to finish'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          cancel)
            FLAGS+=('--fail-if-not-running' 'Fail loudly if the job is not currently running.')
            __tower-cli_handle_options_flags
            case ${MYWORDS[$INDEX-1]} in
              --format)
                _tower-cli_compreply "human" "json" "yaml" "id"
                return
              ;;

            esac
            case $INDEX in

            *)
                __comp_current_options || return
            ;;
            esac
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          launch)
            FLAGS+=('--monitor' 'If sent, immediately calls `job monitor` on the newly launched job' '--wait' 'Monitor the status of the job, but do not print while job is in progress.' '--no-input' 'Suppress any requests for input.' '--extra-vars' 'yaml format text that contains extra variables topass on.' '-e' 'yaml format text that contains extra variables topass on.')
            OPTIONS+=('--timeout' 'If provided with --monitor, this command will time out after...' '--diff-mode' 'Specify diff mode for job template to run.' '--limit' 'Specify host limit for job template to run.' '--tags' 'Specify tagged actions in the playbook to run.' '--skip-tags' 'Specify tagged actions in the playbook to omit.' '--job-type' 'Specify job type for job template to run.' '--verbosity' 'Specify verbosity of the playbook run.' '--inventory' 'Specify inventory for job template to run.' '--credential' 'Specify machine credential for job template to run.')
            __tower-cli_handle_options_flags
            case ${MYWORDS[$INDEX-1]} in
              --format)
                _tower-cli_compreply "human" "json" "yaml" "id"
                return
              ;;
              --timeout)
              ;;
              --diff-mode)
              ;;
              --limit)
              ;;
              --tags)
              ;;
              --skip-tags)
              ;;
              --job-type)
              ;;
              --verbosity)
              ;;
              --inventory)
              ;;
              --credential)
              ;;

            esac
            case $INDEX in

            *)
                __comp_current_options || return
            ;;
            esac
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          monitor)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          relaunch)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          status)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          stdout)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          wait)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      job_template)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'associate_credential'$'\t''Associate a credential with this job...'$'\n''associate_ig'$'\t''Associate an instance group with this...'$'\n''associate_label'$'\t''Associate an label with this job template.'$'\n''associate_notification_template'$'\t''Associate a notification template from this...'$'\n''callback'$'\t''Contact Tower and request a configuration...'$'\n''copy'$'\t''Copy a job template.'$'\n''create'$'\t''Create a job template.'$'\n''delete'$'\t''Remove the given job template.'$'\n''disassociate_credential'$'\t''Disassociate a credential with this job...'$'\n''disassociate_ig'$'\t''Disassociate an instance group from this...'$'\n''disassociate_label'$'\t''Disassociate an label from this job template.'$'\n''disassociate_notification_template'$'\t''Disassociate a notification template from...'$'\n''get'$'\t''Return one and exactly one job template.'$'\n''list'$'\t''Return a list of job templates.'$'\n''modify'$'\t''Modify an already existing job template.'$'\n''survey'$'\t''Get the survey_spec for the job template.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          associate_credential)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          associate_ig)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          associate_label)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          associate_notification_template)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          callback)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          create)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate_credential)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate_ig)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate_label)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          disassociate_notification_template)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          modify)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          survey)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      label)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      node)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      notification_template)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      organization)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      project)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'copy'$'\t''Copy a project.'$'\n''create'$'\t''Create a new item of resource, with or w/o...'$'\n''delete'$'\t''Remove the given project.'$'\n''get'$'\t''Return one and exactly one project.'$'\n''list'$'\t''Return a list of projects.'$'\n''modify'$'\t''Modify an already existing.'$'\n''monitor'$'\t''Stream the standard output from a job,...'$'\n''status'$'\t''Print the status of the most recent update.'$'\n''stdout'$'\t''Print out the standard out of a unified job...'$'\n''update'$'\t''Trigger a project update job within Ansible...'$'\n''wait'$'\t''Wait for a running job to finish.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          create)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          modify)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          monitor)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          status)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          stdout)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          update)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          wait)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      project_update)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'cancel'$'\t''Cancel a currently running job.'$'\n''delete'$'\t''Remove the given project update.'$'\n''get'$'\t''Return one and exactly one project update.'$'\n''list'$'\t''Return a list of project updates.'$'\n''monitor'$'\t''Stream the standard output from a job,...'$'\n''relaunch'$'\t''Relaunch a stopped job.'$'\n''status'$'\t''Print the current job status.'$'\n''stdout'$'\t''Print out the standard out of a unified job...'$'\n''wait'$'\t''Wait for a running job to finish.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          cancel)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          delete)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          monitor)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          relaunch)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          status)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          stdout)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          wait)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      role)
        __tower-cli_handle_options_flags
        case $INDEX in

        1)
            __comp_current_options || return
            __tower-cli_dynamic_comp 'commands' 'copy'$'\t''Copy a role.'$'\n''get'$'\t''Get information about a role.'$'\n''grant'$'\t''Add a user or a team to a role.'$'\n''list'$'\t''Return a list of roles.'$'\n''revoke'$'\t''Remove a user or a team from a role.'

        ;;
        *)
        # subcmds
        case ${MYWORDS[1]} in
          copy)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          get)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          grant)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          list)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
          revoke)
            __tower-cli_handle_options_flags
            __comp_current_options true || return # no subcmds, no params/opts
          ;;
        esac

        ;;
        esac
      ;;
      schedule)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      setting)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      team)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      user)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      version)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      workflow)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
      workflow_job)
        __tower-cli_handle_options_flags
        __comp_current_options true || return # no subcmds, no params/opts
      ;;
    esac

    ;;
    esac

}

_tower-cli_compreply() {
    local prefix=""
    cur="$(printf '%q' "$cur")"
    IFS=$'\n' COMPREPLY=($(compgen -P "$prefix" -W "$*" -- "$cur"))
    __ltrim_colon_completions "$prefix$cur"

    # http://stackoverflow.com/questions/7267185/bash-autocompletion-add-description-for-possible-completions
    if [[ ${#COMPREPLY[*]} -eq 1 ]]; then # Only one completion
        COMPREPLY=( "${COMPREPLY[0]%% -- *}" ) # Remove ' -- ' and everything after
        COMPREPLY=( "${COMPREPLY[0]%%+( )}" ) # Remove trailing spaces
    fi
}

_tower-cli_host_get_param_host_id_completion() {
    local CURRENT_WORD="${words[$cword]}"
    local param_host_id="$(tower-cli host list | perl -nlwE ' if (m/^ *(\d+) +(\S+)/) { print "$1 -- $2" }')"
    _tower-cli_compreply "$param_host_id"
}

__tower-cli_dynamic_comp() {
    local argname="$1"
    local arg="$2"
    local name desc cols desclength formatted
    local comp=()
    local max=0

    while read -r line; do
        name="$line"
        desc="$line"
        name="${name%$'\t'*}"
        if [[ "${#name}" -gt "$max" ]]; then
            max="${#name}"
        fi
    done <<< "$arg"

    while read -r line; do
        name="$line"
        desc="$line"
        name="${name%$'\t'*}"
        desc="${desc/*$'\t'}"
        if [[ -n "$desc" && "$desc" != "$name" ]]; then
            # TODO portable?
            cols=`tput cols`
            [[ -z $cols ]] && cols=80
            desclength=`expr $cols - 4 - $max`
            formatted=`printf "%-*s -- %-*s" "$max" "$name" "$desclength" "$desc"`
            comp+=("$formatted")
        else
            comp+=("'$name'")
        fi
    done <<< "$arg"
    _tower-cli_compreply ${comp[@]}
}

function __tower-cli_handle_options() {
    local i j
    declare -a copy
    local last="${MYWORDS[$INDEX]}"
    local max=`expr ${#MYWORDS[@]} - 1`
    for ((i=0; i<$max; i++))
    do
        local word="${MYWORDS[$i]}"
        local found=
        for ((j=0; j<${#OPTIONS[@]}; j+=2))
        do
            local option="${OPTIONS[$j]}"
            if [[ "$word" == "$option" ]]; then
                found=1
                i=`expr $i + 1`
                break
            fi
        done
        if [[ -n $found && $i -lt $max ]]; then
            INDEX=`expr $INDEX - 2`
        else
            copy+=("$word")
        fi
    done
    MYWORDS=("${copy[@]}" "$last")
}

function __tower-cli_handle_flags() {
    local i j
    declare -a copy
    local last="${MYWORDS[$INDEX]}"
    local max=`expr ${#MYWORDS[@]} - 1`
    for ((i=0; i<$max; i++))
    do
        local word="${MYWORDS[$i]}"
        local found=
        for ((j=0; j<${#FLAGS[@]}; j+=2))
        do
            local flag="${FLAGS[$j]}"
            if [[ "$word" == "$flag" ]]; then
                found=1
                break
            fi
        done
        if [[ -n $found ]]; then
            INDEX=`expr $INDEX - 1`
        else
            copy+=("$word")
        fi
    done
    MYWORDS=("${copy[@]}" "$last")
}

__tower-cli_handle_options_flags() {
    __tower-cli_handle_options
    __tower-cli_handle_flags
}

__comp_current_options() {
    local always="$1"
    if [[ -n $always || ${MYWORDS[$INDEX]} =~ ^- ]]; then

      local options_spec=''
      local j=

      for ((j=0; j<${#FLAGS[@]}; j+=2))
      do
          local name="${FLAGS[$j]}"
          local desc="${FLAGS[$j+1]}"
          options_spec+="$name"$'\t'"$desc"$'\n'
      done

      for ((j=0; j<${#OPTIONS[@]}; j+=2))
      do
          local name="${OPTIONS[$j]}"
          local desc="${OPTIONS[$j+1]}"
          options_spec+="$name"$'\t'"$desc"$'\n'
      done
      __tower-cli_dynamic_comp 'options' "$options_spec"

      return 1
    else
      return 0
    fi
}


complete -o default -F _tower-cli tower-cli

