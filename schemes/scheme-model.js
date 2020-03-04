const db = require("../data/config");


module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove,
    addStep
};

function find() {
    return db("schemes");
}

function findById(id) {
    return  db("schemes").where({ id: id }).first();
}

function findSteps(id) {
    return db("steps as s")
           .join("schemes as c", "c.id", "s.scheme_id")
           .where("c.id", id)
           .select("s.step_number", "s.instructions", "c.scheme_name")
           .orderBy("s.step_number")
}

function add(obj) {
    return db("schemes").insert(obj);
}

function update(obj, id) {
    return db("schemes").update(obj).where({ id })
}

function remove(id) {
    return db("schemes").where({ id }).del()
}

function addStep(obj, id) {
    return db("steps as s")
        .join("schemes as c", "c.id", "s.scheme_id")
        .where("scheme_id", id)
        .insert(obj)
}

