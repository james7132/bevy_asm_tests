use bevy_ecs::prelude::*;

#[derive(Resource)]
pub struct A(f32);

#[no_mangle]
fn resource_insert(world: &mut World) -> Option<A> {
    world.remove_resource::<A>()
}
