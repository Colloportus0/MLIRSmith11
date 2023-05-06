module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(3 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.constant(2147483647 : i32) : i32
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(4 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.null : !llvm.ptr<i32>
    %57 = llvm.getelementptr %56[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i32> to i64
    %59 = llvm.mlir.constant(16 : index) : i64
    %60 = llvm.add %58, %59  : i64
    %61 = llvm.call @malloc(%60) : (i64) -> !llvm.ptr<i8>
    %62 = llvm.bitcast %61 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i32> to i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.sub %59, %64  : i64
    %66 = llvm.add %63, %65  : i64
    %67 = llvm.urem %66, %59  : i64
    %68 = llvm.sub %66, %67  : i64
    %69 = llvm.inttoptr %68 : i64 to !llvm.ptr<i32>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %71 = llvm.insertvalue %62, %70[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.insertvalue %50, %74[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %76 = llvm.insertvalue %51, %75[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.insertvalue %52, %76[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %78 = llvm.insertvalue %53, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %79 = llvm.insertvalue %54, %78[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.insertvalue %51, %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %81 = llvm.insertvalue %52, %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.insertvalue %53, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %83 = llvm.insertvalue %54, %82[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %84 = llvm.insertvalue %55, %83[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%85 : i64)
  ^bb1(%88: i64):  // 2 preds: ^bb0, ^bb14
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%90 : i64)
  ^bb3(%93: i64):  // 2 preds: ^bb2, ^bb13
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%95 : i64)
  ^bb5(%98: i64):  // 2 preds: ^bb4, ^bb12
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%100 : i64)
  ^bb7(%103: i64):  // 2 preds: ^bb6, ^bb11
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%105 : i64)
  ^bb9(%108: i64):  // 2 preds: ^bb8, ^bb10
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %110 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %111 = llvm.add %88, %93  : i64
    %112 = llvm.add %111, %98  : i64
    %113 = llvm.add %112, %103  : i64
    %114 = llvm.add %113, %108  : i64
    %115 = llvm.getelementptr %110[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.load %115 : !llvm.ptr<i32>
    %117 = llvm.sub %18, %116  : i32
    %118 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %119 = llvm.add %88, %93  : i64
    %120 = llvm.add %119, %98  : i64
    %121 = llvm.add %120, %103  : i64
    %122 = llvm.add %121, %108  : i64
    %123 = llvm.getelementptr %118[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %117, %123 : !llvm.ptr<i32>
    %124 = llvm.add %108, %107  : i64
    llvm.br ^bb9(%124 : i64)
  ^bb11:  // pred: ^bb9
    %125 = llvm.add %103, %102  : i64
    llvm.br ^bb7(%125 : i64)
  ^bb12:  // pred: ^bb7
    %126 = llvm.add %98, %97  : i64
    llvm.br ^bb5(%126 : i64)
  ^bb13:  // pred: ^bb5
    %127 = llvm.add %93, %92  : i64
    llvm.br ^bb3(%127 : i64)
  ^bb14:  // pred: ^bb3
    %128 = llvm.add %88, %87  : i64
    llvm.br ^bb1(%128 : i64)
  ^bb15:  // pred: ^bb1
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.null : !llvm.ptr<i32>
    %136 = llvm.getelementptr %135[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i32> to i64
    %138 = llvm.mlir.constant(16 : index) : i64
    %139 = llvm.add %137, %138  : i64
    %140 = llvm.call @malloc(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.bitcast %140 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<i32> to i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.sub %138, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.urem %145, %138  : i64
    %147 = llvm.sub %145, %146  : i64
    %148 = llvm.inttoptr %147 : i64 to !llvm.ptr<i32>
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %150 = llvm.insertvalue %141, %149[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %154 = llvm.insertvalue %129, %153[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %155 = llvm.insertvalue %130, %154[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %156 = llvm.insertvalue %131, %155[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.insertvalue %132, %156[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %158 = llvm.insertvalue %133, %157[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %159 = llvm.insertvalue %130, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.insertvalue %131, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %161 = llvm.insertvalue %132, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %162 = llvm.insertvalue %133, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %163 = llvm.insertvalue %134, %162[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%164 : i64)
  ^bb16(%167: i64):  // 2 preds: ^bb15, ^bb29
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb17, ^bb30
  ^bb17:  // pred: ^bb16
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%169 : i64)
  ^bb18(%172: i64):  // 2 preds: ^bb17, ^bb28
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb19, ^bb29
  ^bb19:  // pred: ^bb18
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%174 : i64)
  ^bb20(%177: i64):  // 2 preds: ^bb19, ^bb27
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb21, ^bb28
  ^bb21:  // pred: ^bb20
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%179 : i64)
  ^bb22(%182: i64):  // 2 preds: ^bb21, ^bb26
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%184 : i64)
  ^bb24(%187: i64):  // 2 preds: ^bb23, ^bb25
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %189 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %190 = llvm.add %167, %172  : i64
    %191 = llvm.add %190, %177  : i64
    %192 = llvm.add %191, %182  : i64
    %193 = llvm.add %192, %187  : i64
    %194 = llvm.getelementptr %189[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.sub %18, %195  : i32
    %197 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %198 = llvm.add %167, %172  : i64
    %199 = llvm.add %198, %177  : i64
    %200 = llvm.add %199, %182  : i64
    %201 = llvm.add %200, %187  : i64
    %202 = llvm.getelementptr %197[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %196, %202 : !llvm.ptr<i32>
    %203 = llvm.add %187, %186  : i64
    llvm.br ^bb24(%203 : i64)
  ^bb26:  // pred: ^bb24
    %204 = llvm.add %182, %181  : i64
    llvm.br ^bb22(%204 : i64)
  ^bb27:  // pred: ^bb22
    %205 = llvm.add %177, %176  : i64
    llvm.br ^bb20(%205 : i64)
  ^bb28:  // pred: ^bb20
    %206 = llvm.add %172, %171  : i64
    llvm.br ^bb18(%206 : i64)
  ^bb29:  // pred: ^bb18
    %207 = llvm.add %167, %166  : i64
    llvm.br ^bb16(%207 : i64)
  ^bb30:  // pred: ^bb16
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i32>
    %214 = llvm.getelementptr %213[%208] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i32> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i32> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i32>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %208, %231[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %209, %232[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %210, %233[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %211, %234[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %209, %235[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %210, %236[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %211, %237[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %212, %238[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%240 : i64)
  ^bb31(%243: i64):  // 2 preds: ^bb30, ^bb41
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%245 : i64)
  ^bb33(%248: i64):  // 2 preds: ^bb32, ^bb40
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%250 : i64)
  ^bb35(%253: i64):  // 2 preds: ^bb34, ^bb39
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%255 : i64)
  ^bb37(%258: i64):  // 2 preds: ^bb36, ^bb38
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %260 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.add %243, %248  : i64
    %262 = llvm.add %261, %253  : i64
    %263 = llvm.add %262, %258  : i64
    %264 = llvm.getelementptr %260[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %17, %264 : !llvm.ptr<i32>
    %265 = llvm.add %258, %257  : i64
    llvm.br ^bb37(%265 : i64)
  ^bb39:  // pred: ^bb37
    %266 = llvm.add %253, %252  : i64
    llvm.br ^bb35(%266 : i64)
  ^bb40:  // pred: ^bb35
    %267 = llvm.add %248, %247  : i64
    llvm.br ^bb33(%267 : i64)
  ^bb41:  // pred: ^bb33
    %268 = llvm.add %243, %242  : i64
    llvm.br ^bb31(%268 : i64)
  ^bb42:  // pred: ^bb31
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%269 : i64)
  ^bb43(%272: i64):  // 2 preds: ^bb42, ^bb56
    %273 = llvm.icmp "slt" %272, %270 : i64
    llvm.cond_br %273, ^bb44, ^bb57
  ^bb44:  // pred: ^bb43
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%274 : i64)
  ^bb45(%277: i64):  // 2 preds: ^bb44, ^bb55
    %278 = llvm.icmp "slt" %277, %275 : i64
    llvm.cond_br %278, ^bb46, ^bb56
  ^bb46:  // pred: ^bb45
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%279 : i64)
  ^bb47(%282: i64):  // 2 preds: ^bb46, ^bb54
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb48, ^bb55
  ^bb48:  // pred: ^bb47
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%284 : i64)
  ^bb49(%287: i64):  // 2 preds: ^bb48, ^bb53
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%289 : i64)
  ^bb51(%292: i64):  // 2 preds: ^bb50, ^bb52
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %294 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %295 = llvm.add %272, %277  : i64
    %296 = llvm.add %295, %282  : i64
    %297 = llvm.add %296, %287  : i64
    %298 = llvm.add %297, %292  : i64
    %299 = llvm.getelementptr %294[%298] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %300 = llvm.load %299 : !llvm.ptr<i32>
    %301 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.add %272, %277  : i64
    %303 = llvm.add %302, %287  : i64
    %304 = llvm.add %303, %292  : i64
    %305 = llvm.getelementptr %301[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.icmp "slt" %306, %300 : i32
    %308 = llvm.select %307, %306, %300 : i1, i32
    %309 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.add %272, %277  : i64
    %311 = llvm.add %310, %287  : i64
    %312 = llvm.add %311, %292  : i64
    %313 = llvm.getelementptr %309[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %308, %313 : !llvm.ptr<i32>
    %314 = llvm.add %292, %291  : i64
    llvm.br ^bb51(%314 : i64)
  ^bb53:  // pred: ^bb51
    %315 = llvm.add %287, %286  : i64
    llvm.br ^bb49(%315 : i64)
  ^bb54:  // pred: ^bb49
    %316 = llvm.add %282, %281  : i64
    llvm.br ^bb47(%316 : i64)
  ^bb55:  // pred: ^bb47
    %317 = llvm.add %277, %276  : i64
    llvm.br ^bb45(%317 : i64)
  ^bb56:  // pred: ^bb45
    %318 = llvm.add %272, %271  : i64
    llvm.br ^bb43(%318 : i64)
  ^bb57:  // pred: ^bb43
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.null : !llvm.ptr<i64>
    %322 = llvm.getelementptr %321[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i64> to i64
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.add %323, %324  : i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr<i8>
    %327 = llvm.bitcast %326 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i64> to i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.sub %324, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.urem %331, %324  : i64
    %333 = llvm.sub %331, %332  : i64
    %334 = llvm.inttoptr %333 : i64 to !llvm.ptr<i64>
    %335 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %336 = llvm.insertvalue %327, %335[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %319, %339[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %320, %340[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%342 : i64)
  ^bb58(%345: i64):  // 2 preds: ^bb57, ^bb59
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %347 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %348 : !llvm.ptr<i64>
    %349 = llvm.add %345, %344  : i64
    llvm.br ^bb58(%349 : i64)
  ^bb60:  // pred: ^bb58
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.null : !llvm.ptr<i64>
    %353 = llvm.getelementptr %352[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i64> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i64> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<i64>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.insertvalue %350, %370[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.insertvalue %351, %371[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%373 : i64)
  ^bb61(%376: i64):  // 2 preds: ^bb60, ^bb62
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %378 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.getelementptr %378[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %380 = llvm.load %379 : !llvm.ptr<i64>
    %381 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %382 = llvm.load %381 : !llvm.ptr<i64>
    %383 = llvm.mul %380, %382  : i64
    %384 = llvm.extractvalue %372[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%376] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %383, %385 : !llvm.ptr<i64>
    %386 = llvm.add %376, %375  : i64
    llvm.br ^bb61(%386 : i64)
  ^bb63:  // pred: ^bb61
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.null : !llvm.ptr<i1>
    %390 = llvm.getelementptr %389[%387] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %391 = llvm.ptrtoint %390 : !llvm.ptr<i1> to i64
    %392 = llvm.mlir.constant(16 : index) : i64
    %393 = llvm.add %391, %392  : i64
    %394 = llvm.call @malloc(%393) : (i64) -> !llvm.ptr<i8>
    %395 = llvm.bitcast %394 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %396 = llvm.ptrtoint %395 : !llvm.ptr<i1> to i64
    %397 = llvm.mlir.constant(1 : index) : i64
    %398 = llvm.sub %392, %397  : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.urem %399, %392  : i64
    %401 = llvm.sub %399, %400  : i64
    %402 = llvm.inttoptr %401 : i64 to !llvm.ptr<i1>
    %403 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %404 = llvm.insertvalue %395, %403[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %405 = llvm.insertvalue %402, %404[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.insertvalue %406, %405[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %408 = llvm.insertvalue %387, %407[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.insertvalue %388, %408[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(4 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%410 : i64)
  ^bb64(%413: i64):  // 2 preds: ^bb63, ^bb65
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %415 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.getelementptr %415[%413] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %417 = llvm.load %416 : !llvm.ptr<i64>
    %418 = llvm.extractvalue %372[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.getelementptr %418[%413] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %420 = llvm.load %419 : !llvm.ptr<i64>
    %421 = llvm.icmp "eq" %417, %420 : i64
    %422 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%413] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %421, %423 : !llvm.ptr<i1>
    %424 = llvm.add %413, %412  : i64
    llvm.br ^bb64(%424 : i64)
  ^bb66:  // pred: ^bb64
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.null : !llvm.ptr<i64>
    %428 = llvm.getelementptr %427[%425] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i64> to i64
    %430 = llvm.mlir.constant(16 : index) : i64
    %431 = llvm.add %429, %430  : i64
    %432 = llvm.call @malloc(%431) : (i64) -> !llvm.ptr<i8>
    %433 = llvm.bitcast %432 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<i64> to i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.sub %430, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.urem %437, %430  : i64
    %439 = llvm.sub %437, %438  : i64
    %440 = llvm.inttoptr %439 : i64 to !llvm.ptr<i64>
    %441 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %442 = llvm.insertvalue %433, %441[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.insertvalue %440, %442[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.insertvalue %444, %443[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.insertvalue %425, %445[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %447 = llvm.insertvalue %426, %446[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%448 : i64)
  ^bb67(%451: i64):  // 2 preds: ^bb66, ^bb68
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %453 = llvm.extractvalue %409[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %454 = llvm.getelementptr %453[%451] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %455 = llvm.load %454 : !llvm.ptr<i1>
    %456 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.getelementptr %456[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %458 = llvm.load %457 : !llvm.ptr<i64>
    %459 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.getelementptr %459[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %461 = llvm.load %460 : !llvm.ptr<i64>
    %462 = llvm.select %455, %458, %461 : i1, i64
    %463 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.getelementptr %463[%451] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %462, %464 : !llvm.ptr<i64>
    %465 = llvm.add %451, %450  : i64
    llvm.br ^bb67(%465 : i64)
  ^bb69:  // pred: ^bb67
    %466 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.getelementptr %466[%19] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %468 = llvm.load %467 : !llvm.ptr<i64>
    %469 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.getelementptr %469[%20] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %471 = llvm.load %470 : !llvm.ptr<i64>
    %472 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.getelementptr %472[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %474 = llvm.load %473 : !llvm.ptr<i64>
    %475 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.getelementptr %475[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %477 = llvm.load %476 : !llvm.ptr<i64>
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mul %477, %474  : i64
    %480 = llvm.mul %479, %471  : i64
    %481 = llvm.mul %480, %468  : i64
    %482 = llvm.mlir.null : !llvm.ptr<i32>
    %483 = llvm.getelementptr %482[%481] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %484 = llvm.ptrtoint %483 : !llvm.ptr<i32> to i64
    %485 = llvm.mlir.constant(16 : index) : i64
    %486 = llvm.add %484, %485  : i64
    %487 = llvm.call @malloc(%486) : (i64) -> !llvm.ptr<i8>
    %488 = llvm.bitcast %487 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %489 = llvm.ptrtoint %488 : !llvm.ptr<i32> to i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.sub %485, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.urem %492, %485  : i64
    %494 = llvm.sub %492, %493  : i64
    %495 = llvm.inttoptr %494 : i64 to !llvm.ptr<i32>
    %496 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %497 = llvm.insertvalue %488, %496[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %495, %497[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.insertvalue %499, %498[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %468, %500[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %471, %501[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %474, %502[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %477, %503[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %480, %504[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %479, %505[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %477, %506[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %478, %507[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%509 : i64)
  ^bb70(%511: i64):  // 2 preds: ^bb69, ^bb80
    %512 = llvm.icmp "slt" %511, %468 : i64
    llvm.cond_br %512, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%513 : i64)
  ^bb72(%515: i64):  // 2 preds: ^bb71, ^bb79
    %516 = llvm.icmp "slt" %515, %471 : i64
    llvm.cond_br %516, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %517 = llvm.mlir.constant(0 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%517 : i64)
  ^bb74(%519: i64):  // 2 preds: ^bb73, ^bb78
    %520 = llvm.icmp "slt" %519, %474 : i64
    llvm.cond_br %520, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%521 : i64)
  ^bb76(%523: i64):  // 2 preds: ^bb75, ^bb77
    %524 = llvm.icmp "slt" %523, %477 : i64
    llvm.cond_br %524, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %525 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.add %19, %19  : i64
    %527 = llvm.add %526, %19  : i64
    %528 = llvm.add %527, %19  : i64
    %529 = llvm.getelementptr %525[%528] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %530 = llvm.load %529 : !llvm.ptr<i32>
    %531 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.extractvalue %508[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.mul %511, %532  : i64
    %534 = llvm.extractvalue %508[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.mul %515, %534  : i64
    %536 = llvm.add %533, %535  : i64
    %537 = llvm.extractvalue %508[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.mul %519, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.add %539, %523  : i64
    %541 = llvm.getelementptr %531[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %530, %541 : !llvm.ptr<i32>
    %542 = llvm.add %523, %522  : i64
    llvm.br ^bb76(%542 : i64)
  ^bb78:  // pred: ^bb76
    %543 = llvm.add %519, %518  : i64
    llvm.br ^bb74(%543 : i64)
  ^bb79:  // pred: ^bb74
    %544 = llvm.add %515, %514  : i64
    llvm.br ^bb72(%544 : i64)
  ^bb80:  // pred: ^bb72
    %545 = llvm.add %511, %510  : i64
    llvm.br ^bb70(%545 : i64)
  ^bb81:  // pred: ^bb70
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.null : !llvm.ptr<i32>
    %552 = llvm.getelementptr %551[%546] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %553 = llvm.ptrtoint %552 : !llvm.ptr<i32> to i64
    %554 = llvm.mlir.constant(16 : index) : i64
    %555 = llvm.add %553, %554  : i64
    %556 = llvm.call @malloc(%555) : (i64) -> !llvm.ptr<i8>
    %557 = llvm.bitcast %556 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %558 = llvm.ptrtoint %557 : !llvm.ptr<i32> to i64
    %559 = llvm.mlir.constant(1 : index) : i64
    %560 = llvm.sub %554, %559  : i64
    %561 = llvm.add %558, %560  : i64
    %562 = llvm.urem %561, %554  : i64
    %563 = llvm.sub %561, %562  : i64
    %564 = llvm.inttoptr %563 : i64 to !llvm.ptr<i32>
    %565 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %566 = llvm.insertvalue %557, %565[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.insertvalue %564, %566[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.insertvalue %568, %567[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %546, %569[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %547, %570[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.insertvalue %548, %571[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.insertvalue %549, %572[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.insertvalue %547, %573[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.insertvalue %548, %574[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.insertvalue %549, %575[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.insertvalue %550, %576[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%578 : i64)
  ^bb82(%580: i64):  // 2 preds: ^bb81, ^bb92
    %581 = llvm.icmp "slt" %580, %468 : i64
    llvm.cond_br %581, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%582 : i64)
  ^bb84(%584: i64):  // 2 preds: ^bb83, ^bb91
    %585 = llvm.icmp "slt" %584, %471 : i64
    llvm.cond_br %585, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%586 : i64)
  ^bb86(%588: i64):  // 2 preds: ^bb85, ^bb90
    %589 = llvm.icmp "slt" %588, %474 : i64
    llvm.cond_br %589, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%590 : i64)
  ^bb88(%592: i64):  // 2 preds: ^bb87, ^bb89
    %593 = llvm.icmp "slt" %592, %477 : i64
    llvm.cond_br %593, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %594 = llvm.extractvalue %508[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.extractvalue %508[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.mul %580, %595  : i64
    %597 = llvm.extractvalue %508[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.mul %584, %597  : i64
    %599 = llvm.add %596, %598  : i64
    %600 = llvm.extractvalue %508[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.mul %588, %600  : i64
    %602 = llvm.add %599, %601  : i64
    %603 = llvm.add %602, %592  : i64
    %604 = llvm.getelementptr %594[%603] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %605 = llvm.load %604 : !llvm.ptr<i32>
    %606 = llvm.extractvalue %577[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.add %580, %584  : i64
    %608 = llvm.add %607, %592  : i64
    %609 = llvm.add %608, %588  : i64
    %610 = llvm.getelementptr %606[%609] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %605, %610 : !llvm.ptr<i32>
    %611 = llvm.add %592, %591  : i64
    llvm.br ^bb88(%611 : i64)
  ^bb90:  // pred: ^bb88
    %612 = llvm.add %588, %587  : i64
    llvm.br ^bb86(%612 : i64)
  ^bb91:  // pred: ^bb86
    %613 = llvm.add %584, %583  : i64
    llvm.br ^bb84(%613 : i64)
  ^bb92:  // pred: ^bb84
    %614 = llvm.add %580, %579  : i64
    llvm.br ^bb82(%614 : i64)
  ^bb93:  // pred: ^bb82
    llvm.return %577 : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %52 = llvm.mlir.constant(1 : i64) : i64
    %53 = llvm.mlir.constant(8 : i64) : i64
    %54 = llvm.call @malloc(%53) : (i64) -> !llvm.ptr<i8>
    %55 = llvm.bitcast %54 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %51[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %51[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %51[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %51[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.extractvalue %51[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %64[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %51[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %65[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(0 : i64) : i64
    %87 = llvm.getelementptr %55[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.call @omTensorListCreate(%55, %52, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %88 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

