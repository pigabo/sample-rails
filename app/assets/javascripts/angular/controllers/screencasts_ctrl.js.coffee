App.controller 'ScreencastsCtrl', ['$scope', 'Restangular', ($scope, Restangular) ->
  # $scope.screencasts = Screencast.query()
  baseScreencasts = Restangular.all('api/screencasts')

  $scope.loadScreencasts = ->
    baseScreencasts.getList().then (screencasts) ->    
      $scope.screencasts = screencasts     
  $scope.loadScreencasts() 
    
  $scope.deleteScreencast = (screencast) ->
    console.log("delete")
    screencast.remove().then ->
      $scope.screencasts = _.without($scope.screencasts, screencast)  
      
  $scope.createScreencast = ->    
    baseScreencasts.post($scope.newScreencast).then ->
      $scope.loadScreencasts()

  $scope.updateScreencast = () ->    
    $scope.selectedScreencast.put().then ->
      $scope.loadScreencasts()

  $scope.selectScreencast = (screencast) ->
    # keep the original as-is by copying screencast to a new element
    $scope.selectedScreencast = Restangular.copy(screencast)
    # baseScreencasts.one(id).get().then (screencast) ->     
      # $scope.selectedScreencast = screencast
 
  return
]