namespace Moshine.UI.MapKit;

uses
  MapKit;

type
  MKMapViewExtensions = public extension class(MKMapView)
  public

    method centerToLocation(location:CLLocationCoordinate2D);
    begin
      var regionRadius:CLLocationDistance := 1000;

      var coordinateRegion := MKCoordinateRegionMakeWithDistance(
        location, regionRadius, regionRadius);

      self.setRegion(coordinateRegion) animated(true);

    end;

  end;

end.