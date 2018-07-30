# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :cloudserver,
    port: 4000,
    remote_hosts: ["${REMOTE_HOST_1}"],
    mode: :test
    # mode: :computation_only
    # mode: :full

config :lasp,
  membership: false,
  mode: :delta_based,
  storage_backend: :lasp_ets_storage_backend,
  delta_interval: 10000,
  plumtree_peer_refresh_interval: 2000,
  state_sync_interval:  2000

config :plumtree,
  broadcast_exchange_timer: 2000,
  broadcast_mods: [:lasp_plumtree_backend]

config :partisan,
  partisan_peer_service_manager: :partisan_hyparview_peer_service_manager,
  channels: [1,2]
# config :lager,
#   handlers: [
#     level: :critical
#   ]

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :webserver, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:webserver, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"