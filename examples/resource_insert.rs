use bevy_ecs::prelude::*;

#[derive(Resource)]
pub struct A(f32);

#[no_mangle]
fn resource_insert(world: &mut World, resource: A) {
    world.insert_resource(resource);
}
