module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %14 = llvm.mlir.constant(-2147483648 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.mlir.constant(8 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<i32>
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<i32> to i64
    %41 = llvm.mlir.constant(16 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.sub %41, %46  : i64
    %48 = llvm.add %45, %47  : i64
    %49 = llvm.urem %48, %41  : i64
    %50 = llvm.sub %48, %49  : i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr<i32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %53 = llvm.insertvalue %44, %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %32, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %34, %60[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %36, %61[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %32, %62[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %33, %63[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %34, %64[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %35, %65[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%67 : i64)
  ^bb1(%70: i64):  // 2 preds: ^bb0, ^bb14
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%72 : i64)
  ^bb3(%75: i64):  // 2 preds: ^bb2, ^bb13
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%77 : i64)
  ^bb5(%80: i64):  // 2 preds: ^bb4, ^bb12
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%82 : i64)
  ^bb7(%85: i64):  // 2 preds: ^bb6, ^bb11
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%87 : i64)
  ^bb9(%90: i64):  // 2 preds: ^bb8, ^bb10
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %92 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %93 = llvm.mlir.constant(4 : index) : i64
    %94 = llvm.mul %70, %93  : i64
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %75, %95  : i64
    %97 = llvm.add %94, %96  : i64
    %98 = llvm.add %97, %80  : i64
    %99 = llvm.add %98, %85  : i64
    %100 = llvm.add %99, %90  : i64
    %101 = llvm.getelementptr %92[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.icmp "slt" %102, %104 : i32
    %106 = llvm.select %105, %104, %102 : i1, i32
    %107 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.icmp "slt" %106, %108 : i32
    %110 = llvm.select %109, %106, %108 : i1, i32
    %111 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %112 = llvm.mlir.constant(4 : index) : i64
    %113 = llvm.mul %70, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %75, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.add %116, %80  : i64
    %118 = llvm.add %117, %85  : i64
    %119 = llvm.add %118, %90  : i64
    %120 = llvm.getelementptr %111[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %110, %120 : !llvm.ptr<i32>
    %121 = llvm.add %90, %89  : i64
    llvm.br ^bb9(%121 : i64)
  ^bb11:  // pred: ^bb9
    %122 = llvm.add %85, %84  : i64
    llvm.br ^bb7(%122 : i64)
  ^bb12:  // pred: ^bb7
    %123 = llvm.add %80, %79  : i64
    llvm.br ^bb5(%123 : i64)
  ^bb13:  // pred: ^bb5
    %124 = llvm.add %75, %74  : i64
    llvm.br ^bb3(%124 : i64)
  ^bb14:  // pred: ^bb3
    %125 = llvm.add %70, %69  : i64
    llvm.br ^bb1(%125 : i64)
  ^bb15:  // pred: ^bb1
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(4 : index) : i64
    %132 = llvm.mlir.constant(8 : index) : i64
    %133 = llvm.mlir.null : !llvm.ptr<i32>
    %134 = llvm.getelementptr %133[%132] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i32> to i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i32> to i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.sub %136, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.urem %143, %136  : i64
    %145 = llvm.sub %143, %144  : i64
    %146 = llvm.inttoptr %145 : i64 to !llvm.ptr<i32>
    %147 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %148 = llvm.insertvalue %139, %147[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %146, %148[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %126, %151[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %127, %152[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %128, %153[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %129, %154[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %131, %155[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %128, %156[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %129, %157[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %130, %158[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%160 : i64)
  ^bb16(%163: i64):  // 2 preds: ^bb15, ^bb26
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%165 : i64)
  ^bb18(%168: i64):  // 2 preds: ^bb17, ^bb25
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%170 : i64)
  ^bb20(%173: i64):  // 2 preds: ^bb19, ^bb24
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%175 : i64)
  ^bb22(%178: i64):  // 2 preds: ^bb21, ^bb23
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %180 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mul %163, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %168, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %173  : i64
    %187 = llvm.add %186, %178  : i64
    %188 = llvm.getelementptr %180[%187] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %188 : !llvm.ptr<i32>
    %189 = llvm.add %178, %177  : i64
    llvm.br ^bb22(%189 : i64)
  ^bb24:  // pred: ^bb22
    %190 = llvm.add %173, %172  : i64
    llvm.br ^bb20(%190 : i64)
  ^bb25:  // pred: ^bb20
    %191 = llvm.add %168, %167  : i64
    llvm.br ^bb18(%191 : i64)
  ^bb26:  // pred: ^bb18
    %192 = llvm.add %163, %162  : i64
    llvm.br ^bb16(%192 : i64)
  ^bb27:  // pred: ^bb16
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(2 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%193 : i64)
  ^bb28(%196: i64):  // 2 preds: ^bb27, ^bb41
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%198 : i64)
  ^bb30(%201: i64):  // 2 preds: ^bb29, ^bb40
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%203 : i64)
  ^bb32(%206: i64):  // 2 preds: ^bb31, ^bb39
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%208 : i64)
  ^bb34(%211: i64):  // 2 preds: ^bb33, ^bb38
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%213 : i64)
  ^bb36(%216: i64):  // 2 preds: ^bb35, ^bb37
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %218 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mul %196, %219  : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mul %201, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.add %223, %206  : i64
    %225 = llvm.add %224, %211  : i64
    %226 = llvm.add %225, %216  : i64
    %227 = llvm.getelementptr %218[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mul %196, %230  : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mul %201, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.add %234, %206  : i64
    %236 = llvm.add %235, %211  : i64
    %237 = llvm.getelementptr %229[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.icmp "sgt" %238, %228 : i32
    %240 = llvm.select %239, %238, %228 : i1, i32
    %241 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mul %196, %242  : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mul %201, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.add %246, %206  : i64
    %248 = llvm.add %247, %211  : i64
    %249 = llvm.getelementptr %241[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %240, %249 : !llvm.ptr<i32>
    %250 = llvm.add %216, %215  : i64
    llvm.br ^bb36(%250 : i64)
  ^bb38:  // pred: ^bb36
    %251 = llvm.add %211, %210  : i64
    llvm.br ^bb34(%251 : i64)
  ^bb39:  // pred: ^bb34
    %252 = llvm.add %206, %205  : i64
    llvm.br ^bb32(%252 : i64)
  ^bb40:  // pred: ^bb32
    %253 = llvm.add %201, %200  : i64
    llvm.br ^bb30(%253 : i64)
  ^bb41:  // pred: ^bb30
    %254 = llvm.add %196, %195  : i64
    llvm.br ^bb28(%254 : i64)
  ^bb42:  // pred: ^bb28
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.constant(8 : index) : i64
    %261 = llvm.mlir.null : !llvm.ptr<i32>
    %262 = llvm.getelementptr %261[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i32> to i64
    %264 = llvm.mlir.constant(16 : index) : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.call @malloc(%265) : (i64) -> !llvm.ptr<i8>
    %267 = llvm.bitcast %266 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i32> to i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.sub %264, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.urem %271, %264  : i64
    %273 = llvm.sub %271, %272  : i64
    %274 = llvm.inttoptr %273 : i64 to !llvm.ptr<i32>
    %275 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %276 = llvm.insertvalue %267, %275[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %280 = llvm.insertvalue %255, %279[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.insertvalue %256, %280[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.insertvalue %257, %281[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.insertvalue %259, %282[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.insertvalue %257, %283[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %285 = llvm.insertvalue %258, %284[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%286 : i64)
  ^bb43(%289: i64):  // 2 preds: ^bb42, ^bb50
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%291 : i64)
  ^bb45(%294: i64):  // 2 preds: ^bb44, ^bb49
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%296 : i64)
  ^bb47(%299: i64):  // 2 preds: ^bb46, ^bb48
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %301 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mul %289, %302  : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mul %294, %304  : i64
    %306 = llvm.add %303, %305  : i64
    %307 = llvm.add %306, %299  : i64
    %308 = llvm.getelementptr %301[%307] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %308 : !llvm.ptr<i32>
    %309 = llvm.add %299, %298  : i64
    llvm.br ^bb47(%309 : i64)
  ^bb49:  // pred: ^bb47
    %310 = llvm.add %294, %293  : i64
    llvm.br ^bb45(%310 : i64)
  ^bb50:  // pred: ^bb45
    %311 = llvm.add %289, %288  : i64
    llvm.br ^bb43(%311 : i64)
  ^bb51:  // pred: ^bb43
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(2 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%312 : i64)
  ^bb52(%315: i64):  // 2 preds: ^bb51, ^bb62
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%317 : i64)
  ^bb54(%320: i64):  // 2 preds: ^bb53, ^bb61
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%322 : i64)
  ^bb56(%325: i64):  // 2 preds: ^bb55, ^bb60
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %327 = llvm.mlir.constant(0 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%327 : i64)
  ^bb58(%330: i64):  // 2 preds: ^bb57, ^bb59
    %331 = llvm.icmp "slt" %330, %328 : i64
    llvm.cond_br %331, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %332 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mul %315, %333  : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %320, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.add %337, %325  : i64
    %339 = llvm.add %338, %330  : i64
    %340 = llvm.getelementptr %332[%339] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %341 = llvm.load %340 : !llvm.ptr<i32>
    %342 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mul %315, %343  : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mul %320, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.add %347, %325  : i64
    %349 = llvm.getelementptr %342[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %350 = llvm.load %349 : !llvm.ptr<i32>
    %351 = llvm.icmp "sgt" %350, %341 : i32
    %352 = llvm.select %351, %350, %341 : i1, i32
    %353 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mul %315, %354  : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mul %320, %356  : i64
    %358 = llvm.add %355, %357  : i64
    %359 = llvm.add %358, %325  : i64
    %360 = llvm.getelementptr %353[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %352, %360 : !llvm.ptr<i32>
    %361 = llvm.add %330, %329  : i64
    llvm.br ^bb58(%361 : i64)
  ^bb60:  // pred: ^bb58
    %362 = llvm.add %325, %324  : i64
    llvm.br ^bb56(%362 : i64)
  ^bb61:  // pred: ^bb56
    %363 = llvm.add %320, %319  : i64
    llvm.br ^bb54(%363 : i64)
  ^bb62:  // pred: ^bb54
    %364 = llvm.add %315, %314  : i64
    llvm.br ^bb52(%364 : i64)
  ^bb63:  // pred: ^bb52
    %365 = llvm.mlir.constant(2 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mlir.constant(2 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(4 : index) : i64
    %371 = llvm.mlir.constant(8 : index) : i64
    %372 = llvm.mlir.constant(16 : index) : i64
    %373 = llvm.mlir.null : !llvm.ptr<i1>
    %374 = llvm.getelementptr %373[%372] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %375 = llvm.ptrtoint %374 : !llvm.ptr<i1> to i64
    %376 = llvm.mlir.constant(16 : index) : i64
    %377 = llvm.add %375, %376  : i64
    %378 = llvm.call @malloc(%377) : (i64) -> !llvm.ptr<i8>
    %379 = llvm.bitcast %378 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i1> to i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.sub %376, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.urem %383, %376  : i64
    %385 = llvm.sub %383, %384  : i64
    %386 = llvm.inttoptr %385 : i64 to !llvm.ptr<i1>
    %387 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %388 = llvm.insertvalue %379, %387[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %389 = llvm.insertvalue %386, %388[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.insertvalue %390, %389[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %392 = llvm.insertvalue %365, %391[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %393 = llvm.insertvalue %366, %392[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %367, %393[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.insertvalue %368, %394[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %370, %396[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %368, %397[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %369, %398[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%400 : i64)
  ^bb64(%403: i64):  // 2 preds: ^bb63, ^bb74
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%405 : i64)
  ^bb66(%408: i64):  // 2 preds: ^bb65, ^bb73
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%410 : i64)
  ^bb68(%413: i64):  // 2 preds: ^bb67, ^bb72
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%415 : i64)
  ^bb70(%418: i64):  // 2 preds: ^bb69, ^bb71
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %420 = llvm.extractvalue %285[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mul %408, %421  : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mul %413, %423  : i64
    %425 = llvm.add %422, %424  : i64
    %426 = llvm.add %425, %418  : i64
    %427 = llvm.getelementptr %420[%426] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %428 = llvm.load %427 : !llvm.ptr<i32>
    %429 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.mul %403, %430  : i64
    %432 = llvm.mlir.constant(2 : index) : i64
    %433 = llvm.mul %408, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.add %434, %413  : i64
    %436 = llvm.add %435, %15  : i64
    %437 = llvm.getelementptr %429[%436] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %438 = llvm.load %437 : !llvm.ptr<i32>
    %439 = llvm.icmp "slt" %428, %438 : i32
    %440 = llvm.extractvalue %399[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(8 : index) : i64
    %442 = llvm.mul %403, %441  : i64
    %443 = llvm.mlir.constant(4 : index) : i64
    %444 = llvm.mul %408, %443  : i64
    %445 = llvm.add %442, %444  : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mul %413, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.add %448, %418  : i64
    %450 = llvm.getelementptr %440[%449] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %439, %450 : !llvm.ptr<i1>
    %451 = llvm.add %418, %417  : i64
    llvm.br ^bb70(%451 : i64)
  ^bb72:  // pred: ^bb70
    %452 = llvm.add %413, %412  : i64
    llvm.br ^bb68(%452 : i64)
  ^bb73:  // pred: ^bb68
    %453 = llvm.add %408, %407  : i64
    llvm.br ^bb66(%453 : i64)
  ^bb74:  // pred: ^bb66
    %454 = llvm.add %403, %402  : i64
    llvm.br ^bb64(%454 : i64)
  ^bb75:  // pred: ^bb64
    %455 = llvm.mlir.constant(2 : index) : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mlir.constant(8 : index) : i64
    %462 = llvm.mlir.null : !llvm.ptr<i32>
    %463 = llvm.getelementptr %462[%461] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %464 = llvm.ptrtoint %463 : !llvm.ptr<i32> to i64
    %465 = llvm.mlir.constant(16 : index) : i64
    %466 = llvm.add %464, %465  : i64
    %467 = llvm.call @malloc(%466) : (i64) -> !llvm.ptr<i8>
    %468 = llvm.bitcast %467 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %469 = llvm.ptrtoint %468 : !llvm.ptr<i32> to i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.sub %465, %470  : i64
    %472 = llvm.add %469, %471  : i64
    %473 = llvm.urem %472, %465  : i64
    %474 = llvm.sub %472, %473  : i64
    %475 = llvm.inttoptr %474 : i64 to !llvm.ptr<i32>
    %476 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %477 = llvm.insertvalue %468, %476[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.insertvalue %475, %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.insertvalue %479, %478[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.insertvalue %455, %480[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.insertvalue %456, %481[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.insertvalue %457, %482[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %484 = llvm.insertvalue %458, %483[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %485 = llvm.insertvalue %460, %484[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %486 = llvm.insertvalue %457, %485[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %487 = llvm.insertvalue %458, %486[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.insertvalue %459, %487[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(2 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%489 : i64)
  ^bb76(%492: i64):  // 2 preds: ^bb75, ^bb86
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%494 : i64)
  ^bb78(%497: i64):  // 2 preds: ^bb77, ^bb85
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%499 : i64)
  ^bb80(%502: i64):  // 2 preds: ^bb79, ^bb84
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%504 : i64)
  ^bb82(%507: i64):  // 2 preds: ^bb81, ^bb83
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %509 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mul %492, %510  : i64
    %512 = llvm.mlir.constant(2 : index) : i64
    %513 = llvm.mul %497, %512  : i64
    %514 = llvm.add %511, %513  : i64
    %515 = llvm.add %514, %502  : i64
    %516 = llvm.add %515, %507  : i64
    %517 = llvm.getelementptr %509[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %518 = llvm.load %517 : !llvm.ptr<i32>
    %519 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %520 = llvm.load %519 : !llvm.ptr<i32>
    %521 = llvm.icmp "slt" %518, %520 : i32
    %522 = llvm.select %521, %520, %518 : i1, i32
    %523 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %524 = llvm.load %523 : !llvm.ptr<i32>
    %525 = llvm.icmp "slt" %522, %524 : i32
    %526 = llvm.select %525, %522, %524 : i1, i32
    %527 = llvm.extractvalue %488[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.mlir.constant(4 : index) : i64
    %529 = llvm.mul %492, %528  : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mul %497, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.add %532, %502  : i64
    %534 = llvm.add %533, %507  : i64
    %535 = llvm.getelementptr %527[%534] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %526, %535 : !llvm.ptr<i32>
    %536 = llvm.add %507, %506  : i64
    llvm.br ^bb82(%536 : i64)
  ^bb84:  // pred: ^bb82
    %537 = llvm.add %502, %501  : i64
    llvm.br ^bb80(%537 : i64)
  ^bb85:  // pred: ^bb80
    %538 = llvm.add %497, %496  : i64
    llvm.br ^bb78(%538 : i64)
  ^bb86:  // pred: ^bb78
    %539 = llvm.add %492, %491  : i64
    llvm.br ^bb76(%539 : i64)
  ^bb87:  // pred: ^bb76
    %540 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %541 = llvm.insertvalue %399, %540[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %542 = llvm.insertvalue %488, %541[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %542 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(4 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.getelementptr %57[%88] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %89 : !llvm.ptr<ptr<i8>>
    %90 = llvm.mlir.constant(4 : i64) : i64
    %91 = llvm.call @omTensorCreateUntyped(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %95 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%91, %92, %94, %96) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %97 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%91, %97) : (!llvm.ptr<i8>, i64) -> ()
    %98 = llvm.call @omTensorGetShape(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %99 = llvm.call @omTensorGetStrides(%91) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.mlir.constant(0 : i64) : i64
    %101 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %98[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %99[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %98[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %99[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(2 : i64) : i64
    %111 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %98[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %99[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(3 : i64) : i64
    %116 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %98[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %99[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(1 : i64) : i64
    %121 = llvm.getelementptr %57[%120] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %91, %121 : !llvm.ptr<ptr<i8>>
    %122 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %122 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

