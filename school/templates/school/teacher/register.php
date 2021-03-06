<div class="row justify-content-center">
  <div class="col-md-8">
    <div class="alert alert-<?php
    echo ($class) ? $class : ''; ?>">
      <?php
      echo (isset($register)) ? $register : ''; ?>
    </div>
    <div class="card">
      <div class="card-header alert alert-primary">Teacher Registration</div>
      <div class="card-body">
        <form method="POST" action="" autocomplete="off">
          <div class="form-group row">
            <label for="name" class="col-md-4 col-form-label text-md-right">
              Name
            </label>
            <div class="col-md-6">
              <input id="name" type="name" class="form-control" name="name"
                value="" required>
              </span>
            </div>
          </div>
          <div class="form-group row">
            <label for="email" class="col-md-4 col-form-label text-md-right">
              Email Address
            </label>
            <div class="col-md-6">
              <input id="email" type="email" class="form-control" name="email"
                value="" required autocomplete="off">
              </span>
            </div>
          </div>
          <div class="form-group row">
            <label for="school" class="col-md-4 col-form-label
              text-md-right">
              School Name
            </label>
            <div class="col-md-6">
              <select name="school_id" class="form-control"
                id="school" required>
                <option value="">Select</option>
                <?php
                foreach ($list_schools as $key => $school) {
                  ?>
                  <option value="<?php
                  echo $school['id']; ?>"><?php
                    echo $school['name']; ?></option>
                  <?php
                }
                ?>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label for="name" class="col-md-4 col-form-label
              text-md-right">
              Class Name
            </label>
            <div class="col-md-6">
              <select name="name" class="form-control" id="name" required>
                <option value="">Select</option>
                <option value="Nursery">Nursery</option>
                <option value="L.K.G">L.K.G</option>
                <option value="H.K.G">H.K.G</option>
                <option value="I">I</option>
                <option value="II">II</option>
                <option value="III">III</option>
                <option value="IV">IV</option>
                <option value="V">V</option>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label for="section" class="col-md-4 col-form-label
              text-md-right">
              Class Section
            </label>
            <div class="col-md-6">
              <select name="section" class="form-control" id="section" required>
                <option value="">Select</option>
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
                <option value="D">D</option>
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label for="subjects" class="col-md-4 col-form-label
              text-md-right">
              Class Subjects
            </label>
            <div class="col-md-6">
              <textarea
                id="subjects" rows="4"
                cols="50"
                name="subjects">English, Hindi, Maths, Science, Sanskrit</textarea>
              </span>
            </div>
          </div>
          <div class="form-group row mb-0">
            <div class="col-md-8 offset-md-4">
              <button type="submit"
                name="submit"
                class="btn btn-primary"
                value="class_register">
                Register
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>