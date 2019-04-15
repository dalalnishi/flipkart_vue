<template>
    <a-modal
      v-model="showModal"
      :footer="null"
      @cancel="toggle"
    >      
    <div class="box">
        <div class="box-part" id="bp-left">
          <div class="partition" id="partition-register">
            <div class="partition-title">LOGIN</div>
            
            <div class="partition-form">
              <form action="post">
                <input                    
                    type="text" 
                    name="email"
                    placeholder="Email" 
                    v-model="emailid"
                    @input="isValid"
                />                  
                <div class="div-css" v-if="emailValid">
                  <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                  {{emailError}}
                </div>  
                <input                    
                    type="password" 
                    name="password"
                    placeholder="Password" 
                    v-model="password"
                    @input="isValid"
                />
                <div class="div-css" v-if="passValid">
                  <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                  {{passError}}
                </div>

                <button id="goto-signin-btn" @click="onLogin">Sign In</button>
                <!-- <button id="register-btn" @click="redirectRegi">SIGNUP</button> -->
                <Register v-if="showRegi" :toggleReg="redirectRegi"/>
              </form>

            </div>
          </div>
        </div>
        <div class="box-part" id="bp-right">
          <div class="box-messages">
          </div>
        </div>
      </div> 
      
</a-modal>
</template>

<script>
import Register from '../../components/Registration/Registration.vue';

const MODAL_WIDTH = 656
export default {
  name: 'login',
  props: ['toggle'],
  modalWidth: MODAL_WIDTH,

  components: {
    Register
  },

  created () {
    this.modalWidth = window.innerWidth < MODAL_WIDTH
      ? MODAL_WIDTH / 2
      : MODAL_WIDTH
  },

  data() {
    return {
      showModal: true,
      emailid: '',
      password: '',
      reg: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
      emailError: '',
      passError: '',
      emailValid: false,
      passValid: false,
      logError: '',
      showRegi: false
    }
  },

  methods: {
    
    // Form Validation
    isValid (event) {
      let name = event.target.name;
      let value = event.target.value;

      if(name==='email') {
        
        if (this.emailid === '') {
          this.emailError = 'Email-ID is required.';
          this.emailValid = true;
        }
        else if(!this.reg.test(this.emailid)) {
          this.emailError = 'Please Enter valid Email-ID.';
          this.emailValid = true;
        }
        else {
          this.emailError = '';
          this.emailValid = false;
        }
      }
      else if (name==='password') {
        if(this.password === '') {
          this.passError = 'Password is required.';
          this.passValid = true;
        }
        else {
          this.passError = '';
          this.passValid = false;
        }
      }
    },

    onLogin (event) {
      event.preventDefault();

      if (this.emailid === '' || this.password === '') {
          if(this.emailid === '') {
            this.emailError = 'Email-ID is required.';
            this.emailValid = true;
          }
          if (this.password === '') {
            this.passError = 'Password is required.';
            this.passValid = true;
          }
      }
      else {
        if(this.emailValid === false && this.passValid === false) {
          const user = {
            email: this.emailid,
            password: this.password
          }
 
          this.$store.dispatch('logUser', user)
          .then((response) => {
            if(response) {
              this.toggle();
              this.$router.push('/');
              location.reload();
            }
          })
          .catch(err => {
            this.$message.error(err);
          })
        }  
      }  
    },

    redirectRegi(event) {
      event.preventDefault();
      this.showRegi = !this.showRegi;
    }

  }
}
</script>

<style scoped>

.box {
  background: white;
  overflow: hidden;
  width: 475px;
  height: 490px;
  border-radius: 2px;
  box-sizing: border-box;
  border: #8b8c8d;
  /* box-shadow: 0 0 40px black; */
  color: #8b8c8d;
  font-size: 0;
}
.box-part {
  display: inline-block;
  position: relative;
  vertical-align: top;
  box-sizing: border-box;
  height: 100%;
  width: 50%;
}
#bp-right {
  background: url("../../assets/Untitled-flip.png") no-repeat top left;
  border-left: 1px solid #eee;
}
  
.box-messages {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
}
.box-error-message {
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  height: 0;
  line-height: 32px;
  padding: 0 12px;
  text-align: center;
  width: 100%;
  font-size: 11px;
  color: white;
  background: #F38181;
}
.partition {
  width: 100%;
  height: 100%;
}
.partition-title {
  box-sizing: border-box;
  padding: 30px;
  width: 100%;
  text-align: center;
  letter-spacing: 1px;
  font-size: 20px;
  font-weight: 300;
}
.partition-form {
  padding: 0 20px;
  box-sizing: border-box;
}

input[type=password],
input[type=text] {
  display: block;
  box-sizing: border-box;
  margin-bottom: 4px;
  width: 100%;
  font-size: 12px;
  line-height: 2;
  border: 0;
  border-bottom: 1px solid #DDDEDF;
  padding: 4px 8px;
  font-family: inherit;
  transition: 0.5s all;
  outline: none;
}
.div-css {
  display: block;
  box-sizing: border-box;
  margin-bottom: 4px;
  width: 100%;
  font-size: 12px;
  /* line-height: 2; */
  border: 0;
  color: red;
  /* border-bottom: 1px solid #DDDEDF; */
  padding: 4px 8px;
  font-family: inherit;
  transition: 0.5s all;
  outline: none;
}
button {
  background: white;
  border-radius: 4px;
  box-sizing: border-box;
  padding: 15px;
  letter-spacing: 1px;
  font-family: "Open Sans", sans-serif;
  font-weight: 600;
  min-width: 140px;
  margin-top: 8px;
  color: #8b8c8d;
  cursor: pointer;
  border: 1px solid #DDDEDF;
  text-transform: uppercase;
  transition: 0.1s all;
  font-size: 10px;
  outline: none;
  background-color: #fb641b;
  font-size: 15px;
  color: white;
  box-shadow: 0 4px 6px 0 rgba(0,0,0,.12);
  width: 100%;
}
button :hover {
  border-color: mix(#DDDEDF, black, 90%);
  color: mix(#8b8c8d, black, 80%);
}

.large-btn {
  width: 100%;
  background: white;
}
span {
  font-weight: 600;
}
span :hover {
  color: white !important;
}

.button-set {
  margin-bottom: 8px;
}
#register-btn,
#signin-btn {
  /* margin-left: 8px; */
  border: none;
  /* padding: 15px; */
  line-height: 180%;
  text-align: center;
  color: #2874f0;
  background-color: #fff;
  margin-top: 16px;
  box-shadow: 0 4px 6px 0 rgba(0,0,0,.12);
  font-weight: 600;
  width: 100%;
  padding: 10px 20px;
}

.autocomplete-fix {
  position: absolute;
  visibility: hidden;
  overflow: hidden;
  opacity: 0;
  width: 0;
  height: 0;
  left: 0;
  top: 0;
}

.pop-out-enter-active,
.pop-out-leave-active {
  transition: all 0.5s;
}
.pop-out-enter,
.pop-out-leave-active {
  opacity: 0;
  transform: translateY(24px);
}

</style>