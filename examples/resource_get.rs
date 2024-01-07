use bevy_ecs::prelude::*;

#[derive(Resource)]
pub struct A(f32);

#[no_mangle]
fn resource_get(world: &mut World) -> Option<Mut<A>> {
    world.get_resource_mut::<A>()
}
