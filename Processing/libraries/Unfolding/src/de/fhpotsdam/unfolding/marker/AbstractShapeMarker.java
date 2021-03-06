package de.fhpotsdam.unfolding.marker;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import processing.core.PGraphics;
import processing.core.PVector;
import de.fhpotsdam.unfolding.UnfoldingMap;
import de.fhpotsdam.unfolding.geo.Location;
import de.fhpotsdam.unfolding.utils.GeoUtils;
import de.fhpotsdam.unfolding.utils.MapPosition;
import de.fhpotsdam.unfolding.utils.ScreenPosition;

/**
 * Abstract marker representing multiple locations and can be implemented as lines, polygons, or other shapes.
 * 
 * Handles multiple locations, and implements the main marker methods for handling those properly.
 */
public abstract class AbstractShapeMarker extends AbstractMarker {

	/** All locations defining this shape. */
	protected List<Location> locations;

	/**
	 * Creates an empty shape marker with no locations. Locations can be added dynamically after creation.
	 */
	public AbstractShapeMarker() {
		this(new ArrayList<Location>(), null);
	}

	/**
	 * Creates a shape marker for the given locations.
	 * 
	 * @param locations
	 *            The list of locations.
	 */
	public AbstractShapeMarker(List<Location> locations) {
		this(locations, null);
	}

	/**
	 * Creates a shape marker for the given locations.
	 * 
	 * @param locations
	 *            The list of locations.
	 * @param properties
	 *            Some data properties for this marker.
	 */
	public AbstractShapeMarker(List<Location> locations, HashMap<String, Object> properties) {
		this.locations = locations;
		setProperties(properties);
	}

	// Methods handling locations -------------------------

	/**
	 * Sets the list of locations.
	 * 
	 * @param locations
	 *            A list of Locations.
	 */
	public void setLocations(List<Location> locations) {
		this.locations = locations;
	}

	/**
	 * Gets all locations.
	 * 
	 * @return A list of Locations.
	 */
	public List<Location> getLocations() {
		return locations;
	}

	/**
	 * Adds all locations to the list of locations.
	 * 
	 * @param locations
	 *            One or multiple Location.
	 */
	public void addLocations(Location... locations) {
		for (Location loc : locations) {
			this.locations.add(loc);
		}
	}

	/**
	 * Adds all locations to the list of locations.
	 * 
	 * @param locations
	 *            A list of Locations.
	 */
	public void addLocations(List<Location> locations) {
		this.locations.addAll(locations);
	}

	/**
	 * Adds a Location to the list of locations.
	 * 
	 * @param lat
	 *            The latitude value.
	 * @param lon
	 *            The longitude value.
	 */
	public void addLocation(float lat, float lon) {
		locations.add(new Location(lat, lon));
	}

	/**
	 * Gets the location at the specified index.
	 * 
	 * @param index
	 *            The index of the location.
	 * @return A Location.
	 */
	public Location getLocation(int index) {
		return locations.get(index);
	}

	/**
	 * Deletes a Location from the list of locations.
	 * 
	 * @param location
	 *            The Location to remove.
	 */
	public void removeLocation(Location location) {
		locations.remove(location);
	}

	/**
	 * Deletes a Location from the list of locations.
	 * 
	 * @param index
	 *            The index of the Location to remove.
	 */
	public void removeLocation(int index) {
		locations.remove(index);
	}

	/**
	 * Adds the given location to the list of locations.
	 * 
	 * NB: Does not set this as the only location! This implementation is just prevent mistakes by using this method as
	 * more general Marker method.
	 * 
	 * @param location
	 *            The location to add.
	 */
	@Override
	public void setLocation(Location location) {
		addLocations(location);
	}

	/**
	 * Gets the geometric center location of this marker.
	 */
	@Override
	public Location getLocation() {
		return getCentroid();
	}
	
	/**
	 * Returns the geometric center of this shape.
	 * 
	 * @return The centroid location.
	 */
	public Location getCentroid() {
		return GeoUtils.getCentroid(locations);
	}

	@Override
	public void draw(UnfoldingMap map) {
		PGraphics pg = map.mapDisplay.getOuterPG();

		List<MapPosition> mapPositions = new ArrayList<MapPosition>();

		for (Location loc : getLocations()) {
			float[] xy = map.mapDisplay.getObjectFromLocation(loc);
			mapPositions.add(new MapPosition(xy));
		}

		draw(pg, mapPositions, properties, map);
	}

	protected void draw(PGraphics pg, List<MapPosition> mapPositions, HashMap<String, Object> properties,
			UnfoldingMap map) {
		draw(pg, mapPositions);
	}

	/**
	 * Draws these markers in outer object coordinate system.
	 * 
	 * e.g. for labels oriented to the map
	 * 
	 * @param pg
	 *            The PGraphics to draw on
	 * @param objectPositions
	 *            The positions in outer object coordinates.
	 */
	public abstract void draw(PGraphics pg, List<MapPosition> objectPositions);

	@Override
	public void draw(PGraphics pg, float x, float y) {

	}

	@Override
	public boolean isInside(UnfoldingMap map, float checkX, float checkY) {
		List<ScreenPosition> positions = new ArrayList<ScreenPosition>();
		for (Location location : locations) {
			ScreenPosition pos = map.getScreenPosition(location);
			positions.add(pos);
		}
		return isInside(checkX, checkY, positions);
	}

	/**
	 * Checks whether the position is within the border of the vectors. Uses a polygon containment algorithm.
	 * 
	 * This method is used for both ScreenPosition as well as Location checks.
	 * 
	 * @param checkX
	 *            The x position to check if inside.
	 * @param checkY
	 *            The y position to check if inside.
	 * @param vectors
	 *            The vectors of the polygon
	 * @return True if inside, false otherwise.
	 */
	protected boolean isInside(float checkX, float checkY,
			List<? extends PVector> vectors) {
		boolean inside = false;
		for (int i = 0, j = vectors.size() - 1; i < vectors.size(); j = i++) {
			PVector pi = vectors.get(i);
			PVector pj = vectors.get(j);
			if ((((pi.y <= checkY) && (checkY < pj.y)) || ((pj.y <= checkY) && (checkY < pi.y)))
					&& (checkX < (pj.x - pi.x) * (checkY - pi.y) / (pj.y - pi.y) + pi.x)) {
				inside = !inside;
			}
		}
		return inside;
	}

	/**
	 * Checks whether given position is inside this marker, according to the shape defined by the marker's locations.
	 * 
	 * Note: This is only in AbstractShapeMarker and not in AbstractMarker (nor Marker) as only shape markers have an
	 * area to test whether a point is inside. All others (Point and Lines) have no area, and thus an inside check
	 * always have to return false. (The screen-pos inside tests check whether a point is inside the visual
	 * representation, which has an area.)
	 * 
	 * @param longitude
	 *            The longitude.
	 * @param latitude
	 *            The latitude.
	 * @return True if inside, false otherwise.
	 */
	public boolean isInsideByLocation(float latitude, float longitude) {
		return isInside(latitude, longitude, locations);
	}

	public boolean isInsideByLocation(Location location) {
		return isInside(location.getLat(), location.getLon(), locations);
	}
	
	@Override
	protected boolean isInside(float checkX, float checkY, float x, float y) {
		// TODO Simply return false?
		throw new RuntimeException("Check for a single positon is not implemented for polygons.");
	}

}
